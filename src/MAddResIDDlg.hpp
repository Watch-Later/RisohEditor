// MAddResIDDlg
//////////////////////////////////////////////////////////////////////////////
// RisohEditor --- Win32API resource editor
// Copyright (C) 2017-2018 Katayama Hirofumi MZ <katayama.hirofumi.mz@gmail.com>
// 
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//////////////////////////////////////////////////////////////////////////////

#ifndef MZC4_MADDRESIDDLG_HPP_
#define MZC4_MADDRESIDDLG_HPP_

#include "RisohEditor.hpp"
#include "resource.h"

//////////////////////////////////////////////////////////////////////////////

class MAddResIDDlg : public MDialogBase
{
public:
    RisohSettings& m_settings;
    ResEntries& m_entries;
    ConstantsDB& m_db;
    MString m_str1;
    MString m_str2;

    MAddResIDDlg(RisohSettings& settings, ResEntries& entries, ConstantsDB& db)
        : MDialogBase(IDD_ADDRESID), m_settings(settings), m_entries(entries), m_db(db)
    {
    }

    BOOL OnInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam)
    {
        CenterWindowDx();
        return TRUE;
    }

    void OnOK(HWND hwnd)
    {
        MString str1 = GetDlgItemText(hwnd, edt1);
        mstr_trim(str1);
        if (str1.empty())
        {
            HWND hEdt1 = GetDlgItem(hwnd, edt1);
            Edit_SetSel(hEdt1, 0, -1);
            SetFocus(hEdt1);
            ErrorBoxDx(IDS_ENTERTEXT);
            return;
        }
        m_str1 = str1;

        MString str2 = GetDlgItemText(hwnd, edt1);
        mstr_trim(str2);
        if (str2.empty())
        {
            HWND hEdt1 = GetDlgItem(hwnd, edt1);
            Edit_SetSel(hEdt1, 0, -1);
            SetFocus(hEdt1);
            ErrorBoxDx(IDS_ENTERID);
            return;
        }

        MString str3 = GetDlgItemText(hwnd, edt3);
        mstr_trim(str3);
        if (str3.empty())
        {
            HWND hEdt3 = GetDlgItem(hwnd, edt3);
            Edit_SetSel(hEdt3, 0, -1);
            SetFocus(hEdt3);
            ErrorBoxDx(IDS_ENTERTEXT);
            return;
        }
        m_str2 = str3;

        MStringA str1a = MTextToAnsi(CP_ACP, str1).c_str();
        if (m_settings.id_map.find(str1a) != m_settings.id_map.end())
        {
            HWND hEdt1 = GetDlgItem(hwnd, edt1);
            Edit_SetSel(hEdt1, 0, -1);
            SetFocus(hEdt1);
            ErrorBoxDx(IDS_ALREADYEXISTS);
            return;
        }

        EndDialog(IDOK);
    }

    void OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify)
    {
        switch (id)
        {
        case IDOK:
            OnOK(hwnd);
            break;
        case IDCANCEL:
            EndDialog(IDCANCEL);
            break;
        case edt1:
            if (codeNotify == EN_CHANGE)
            {
                MString text = GetDlgItemText(hwnd, edt1);

                ConstantsDB::TableType table;
                table = m_db.GetTable(L"RESOURCE.ID.PREFIX");

                INT i = 0;
                ConstantsDB::TableType::iterator it, end = table.end();
                for (it = table.begin(); it != end; ++it)
                {
                    if (text.find(it->name) == 0)
                    {
                        text = m_db.GetName(L"RESOURCE.ID.TYPE", i);
                        SetDlgItemText(hwnd, edt2, text.c_str());
                        i = -1;
                        break;
                    }
                    ++i;
                }
                if (i != -1)
                {
                    SetDlgItemText(hwnd, edt2, NULL);
                }
            }
            break;
        case psh1:
            {
                MString text = GetDlgItemText(hwnd, edt1);
                SetDlgItemTextW(hwnd, edt3, NULL);

                ConstantsDB::TableType table;
                table = m_db.GetTable(L"RESOURCE.ID.PREFIX");

                INT i = 0;
                MString prefix;
                ConstantsDB::TableType::iterator it, end = table.end();
                for (it = table.begin(); it != end; ++it)
                {
                    if (text.find(it->name) == 0)
                    {
                        prefix = it->name;
                        break;
                    }
                    ++i;
                }

                if (prefix.size())
                {
                    UINT nLastID = 0;
                    table = m_db.m_map[L"RESOURCE.ID"];
                    end = table.end();
                    for (it = table.begin(); it != end; ++it)
                    {
                        if (it->name.find(prefix) == 0)
                        {
                            if (nLastID < it->value)
                                nLastID = it->value;
                        }
                    }
                    UINT nNextID = nLastID + 1;
                    SetDlgItemInt(hwnd, edt3, nNextID, TRUE);
                }
            }
            break;
        }
    }

    virtual INT_PTR CALLBACK
    DialogProcDx(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
    {
        switch (uMsg)
        {
            HANDLE_MSG(hwnd, WM_INITDIALOG, OnInitDialog);
            HANDLE_MSG(hwnd, WM_COMMAND, OnCommand);
        }
        return DefaultProcDx();
    }
};

//////////////////////////////////////////////////////////////////////////////

#endif  // ndef MZC4_MADDRESIDDLG_HPP_
