﻿; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TODO: Update the version numbers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

AppId={{AF7494D1-406F-4D04-A8FE-8F9DAB97F611}
AppName=RisohEditor
AppVerName=RisohEditor 5.4.8
AppPublisher=Katayama Hirofumi MZ
AppPublisherURL=http://katahiromz.web.fc2.com/
AppSupportURL=http://katahiromz.web.fc2.com/
AppUpdatesURL=http://katahiromz.web.fc2.com/
DefaultDirName=C:\RisohEditor
DefaultGroupName=RisohEditor
DisableDirPage=no
AllowNoIcons=yes
LicenseFile=LICENSE.txt
OutputDir=.
OutputBaseFilename=RisohEditor-5.4.8-installer
SetupIconFile=src\res\Icon_100.ico
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\RisohEditor.exe
UsePreviousAppDir=yes
VersionInfoCompany=Katayama Hirofumi MZ
VersionInfoCopyright=Copyright (C) 2017-2019 Katayama Hirofumi MZ.
VersionInfoDescription=Win32 Resource Editor
VersionInfoProductName=RisohEditor
VersionInfoProductTextVersion=5.4.8
VersionInfoProductVersion=5.4.8
VersionInfoVersion=5.4.8

[Languages]
Name: "brazilianportuguese"; MessagesFile:  "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile:  "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile:  "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile:  "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile:  "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile:  "compiler:Languages\Dutch.isl"
Name: "english"; MessagesFile:  "compiler:Default.isl"
Name: "finnish"; MessagesFile:  "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile:  "compiler:Languages\French.isl"
Name: "german"; MessagesFile:  "compiler:Languages\German.isl"
Name: "greek"; MessagesFile:  "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile:  "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile:  "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile:  "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
Name: "rc_association"; Description: "{cm:AssociateRcFiles}"
Name: "res_association"; Description: "{cm:AssociateResFiles}"

[Files]
Source: "README.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "READMEJP.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "Standardize.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "HYOJUNKA.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "TRANSLATORS.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "mcdx\MESSAGETABLEDX.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "build\RisohEditor.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\resource.h"; DestDir: "{app}"; Flags: ignoreversion
Source: "data\Constants.txt"; DestDir: "{app}\data"; Flags: ignoreversion
Source: "build\mcdx.exe"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "src\MOleHost.hpp"; DestDir: "{app}\OLE"; Flags: ignoreversion
Source: "src\MOleHost.cpp"; DestDir: "{app}\OLE"; Flags: ignoreversion
Source: "src\MWindowBase.hpp"; DestDir: "{app}\OLE"; Flags: ignoreversion
Source: "src\DlgInit.h"; DestDir: "{app}\DlgInit"; Flags: ignoreversion
Source: "MyWndCtrl\MWindowBase.hpp"; DestDir: "{app}\MyWndCtrl"; Flags: ignoreversion
Source: "MyWndCtrl\MyWndCtrl.cpp"; DestDir: "{app}\MyWndCtrl"; Flags: ignoreversion
Source: "MyWndCtrl\CMakeLists.txt"; DestDir: "{app}\MyWndCtrl"; Flags: ignoreversion
Source: "build\MyWndCtrl.dll"; DestDir: "{app}\MyWndCtrl"; Flags: ignoreversion
Source: "data\bin\libgcc_s_dw2-1.dll"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "data\bin\libwinpthread-1.dll"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "data\bin\windres.exe"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "data\bin\upx.exe"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "data\bin\mcpp.exe"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "data\bin\dfmsc.exe"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "EGA\EGA-Manual.pdf"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA\samples\fact.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA\samples\input.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA\samples\plus.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA\samples\break.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA-samples\RES_clone_by_lang.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA-samples\RES_delete.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA-samples\RES_select.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA-samples\NeutralToEnglish.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA-samples\Censorship.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA-samples\RES_set_binary.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\commctrl.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\dlgs.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\windef.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\windows.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\winnt.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\winresrc.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\winuser.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\winver.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\afxres.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\RisohEditor"; Filename: "{app}\RisohEditor.exe"
Name: "{group}\{cm:ReadmeEnglish}"; Filename: "{app}\README.txt"
Name: "{group}\{cm:ReadmeJapanese}"; Filename: "{app}\READMEJP.txt"
Name: "{group}\{cm:LicenseEnglish}"; Filename: "{app}\LICENSE.txt"
Name: "{group}\{cm:ProgramOnTheWeb,RisohEditor}"; Filename: "http://katahiromz.web.fc2.com"
Name: "{group}\{cm:UninstallProgram,RisohEditor}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\RisohEditor"; Filename: "{app}\RisohEditor.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\RisohEditor.exe"; Description: "{cm:LaunchProgram,RisohEditor}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKCU; Subkey: "Software\Katayama Hirofumi MZ\RisohEditor"; Flags: deletekey uninsdeletekey
; .rc
Root: HKCR; Subkey: ".rc"; ValueType: string; ValueName: ""; ValueData: "RisohEditor.ResourceFile"; Flags: uninsdeletevalue; Tasks: "rc_association"
Root: HKCR; Subkey: "RisohEditor.ResourceFile"; ValueType: string; ValueName: ""; ValueData: "RisohEditor Resource File"; Flags: uninsdeletekey; Tasks: "rc_association"
Root: HKCR; Subkey: "RisohEditor.ResourceFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\RisohEditor.exe,0"; Tasks: "rc_association"
Root: HKCR; Subkey: "RisohEditor.ResourceFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\RisohEditor.exe"" ""%1"""; Tasks: "rc_association"
; .res
Root: HKCR; Subkey: ".res"; ValueType: string; ValueName: ""; ValueData: "RisohEditor.BinaryResourceFile"; Flags: uninsdeletevalue; Tasks: "res_association"
Root: HKCR; Subkey: "RisohEditor.BinaryResourceFile"; ValueType: string; ValueName: ""; ValueData: "RisohEditor Binary Resource File"; Flags: uninsdeletekey; Tasks: "res_association"
Root: HKCR; Subkey: "RisohEditor.BinaryResourceFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\RisohEditor.exe,0"; Tasks: "res_association"
Root: HKCR; Subkey: "RisohEditor.BinaryResourceFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\RisohEditor.exe"" ""%1"""; Tasks: "res_association"

[CustomMessages]
brazilianportuguese.ReadmeEnglish=ReadMe (inglês)
brazilianportuguese.ReadmeJapanese=ReadMe (japonês)
brazilianportuguese.LicenseEnglish=Licença
brazilianportuguese.AssociateRcFiles=Associar arquivos *.rc
brazilianportuguese.AssociateResFiles=Associar arquivos *.res
catalan.ReadmeEnglish=ReadMe (English)
catalan.ReadmeJapanese=ReadMe (Japanese)
catalan.LicenseEnglish=License
catalan.AssociateRcFiles=Associate *.rc files
catalan.AssociateResFiles=Associate *.res files
corsican.ReadmeEnglish=ReadMe (English)
corsican.ReadmeJapanese=ReadMe (Japanese)
corsican.LicenseEnglish=License
corsican.AssociateRcFiles=Associate *.rc files
corsican.AssociateResFiles=Associate *.res files
czech.ReadmeEnglish=ReadMe (anglicky)
czech.ReadmeJapanese=ReadMe (japonština)
czech.LicenseEnglish=Licence
czech.AssociateRcFiles=Přidružit soubory *.rc
czech.AssociateResFiles=Přiřadit soubory *.res
danish.ReadmeEnglish=ReadMe (engelsk)
danish.ReadmeJapanese=ReadMe (japansk)
danish.LicenseEnglish=Licens
danish.AssociateRcFiles=Associerede *.rc-filer
danish.AssociateResFiles=Tilknyttede *.res-filer
dutch.ReadmeEnglish=ReadMe (Engels)
dutch.ReadmeJapanese=ReadMe (Japans)
dutch.LicenseEnglish=Licentie
dutch.AssociateRcFiles=Koppel *.rc-bestanden
dutch.AssociateResFiles=Koppel *.res-bestanden
english.ReadmeEnglish=ReadMe (English)
english.ReadmeJapanese=ReadMe (Japanese)
english.LicenseEnglish=License
english.AssociateRcFiles=Associate *.rc files
english.AssociateResFiles=Associate *.res files
finnish.ReadmeEnglish=ReadMe (englanti)
finnish.ReadmeJapanese=ReadMe (Japans)
finnish.LicenseEnglish=Lisenssi
finnish.AssociateRcFiles=Liitä *.rc-tiedostot
finnish.AssociateResFiles=Liitä *.res-tiedostot
french.ReadmeEnglish=ReadMe (anglais)
french.ReadmeJapanese=ReadMe (japonais)
french.LicenseEnglish=Licence
french.AssociateRcFiles=Associer des fichiers *.rc
french.AssociateResFiles=Associer des fichiers *.res
german.ReadmeEnglish=ReadMe (Englisch)
german.ReadmeJapanese=ReadMe (Japanisch)
german.LicenseEnglish=Lizenz
german.AssociateRcFiles=Verknüpfen Sie *.rc-Dateien
german.AssociateResFiles=Verknüpfen Sie *.res-Dateien
greek.ReadmeEnglish=ReadMe (Αγγλικά)
greek.ReadmeJapanese=ReadMe (Ιαπωνικά)
greek.LicenseEnglish=Αδεια
greek.AssociateRcFiles=Συσχετίστε αρχεία *.rc
greek.AssociateResFiles=Συσχετίστε αρχεία *.res
hebrew.ReadmeEnglish=ReadMe (אנגלית)
hebrew.ReadmeJapanese=ReadMe (יפנית)
hebrew.LicenseEnglish=רישיון
hebrew.AssociateRcFiles=לשייך קבצי *.rc
hebrew.AssociateResFiles=שיוך קבצי *.res
hungarian.ReadmeEnglish=ReadMe (angol)
hungarian.ReadmeJapanese=ReadMe (japán)
hungarian.LicenseEnglish=Engedély
hungarian.AssociateRcFiles=*.rc fájlok társítása
hungarian.AssociateResFiles=*.res fájlok társítása
italian.ReadmeEnglish=Leggimi (Inglese)
italian.ReadmeJapanese=Leggimi (Giapponese)
italian.LicenseEnglish=Licenza (Inglese)
italian.AssociateRcFiles=Associa file *.rc
italian.AssociateResFiles=Associa file *.res
japanese.ReadmeEnglish=ReadMe (英語)
japanese.ReadmeJapanese=読んでね (日本語)
japanese.LicenseEnglish=ライセンス (英語)
japanese.AssociateRcFiles=*.rc ファイルを関連付ける
japanese.AssociateResFiles=*.res ファイルを関連付ける
norwegian.ReadmeEnglish=ReadMe (engelsk)
norwegian.ReadmeJapanese=ReadMe (japansk)
norwegian.LicenseEnglish=Tillatelse
norwegian.AssociateRcFiles=Tilknytt *.rc-filer
norwegian.AssociateResFiles=Tilknytt *.res-filer
polish.ReadmeEnglish=ReadMe (angielski)
polish.ReadmeJapanese=ReadMe (japoński)
polish.LicenseEnglish=Licencja
polish.AssociateRcFiles=Skojarz pliki *.rc
polish.AssociateResFiles=Skojarz pliki *.res
portuguese.ReadmeEnglish=ReadMe (inglês)
portuguese.ReadmeJapanese=ReadMe (japonês)
portuguese.LicenseEnglish=Licença
portuguese.AssociateRcFiles=Associar arquivos *.rc
portuguese.AssociateResFiles=Associar arquivos *.res
russian.ReadmeEnglish=ReadMe (английский)
russian.ReadmeJapanese=ReadMe (японский)
russian.LicenseEnglish=Лицензия
russian.AssociateRcFiles=Связать с файлами *.rc
russian.AssociateResFiles=Связать с файлами *.res
scottishgaelic.ReadmeEnglish=ReadMe (English)
scottishgaelic.ReadmeJapanese=ReadMe (Japanese)
scottishgaelic.LicenseEnglish=License
scottishgaelic.AssociateRcFiles=Associate *.rc files
scottishgaelic.AssociateResFiles=Associate *.res files
serbiancyrillic.ReadmeEnglish=ReadMe (English)
serbiancyrillic.ReadmeJapanese=ReadMe (Japanese)
serbiancyrillic.LicenseEnglish=License
serbiancyrillic.AssociateRcFiles=Associate *.rc files
serbiancyrillic.AssociateResFiles=Associate *.res files
serbianlatin.ReadmeEnglish=ReadMe (English)
serbianlatin.ReadmeJapanese=ReadMe (Japanese)
serbianlatin.LicenseEnglish=License
serbianlatin.AssociateRcFiles=Associate *.rc files
serbianlatin.AssociateResFiles=Associate *.res files
slovenian.ReadmeEnglish=ReadMe (English)
slovenian.ReadmeJapanese=ReadMe (Japanese)
slovenian.LicenseEnglish=License
slovenian.AssociateRcFiles=Associate *.rc files
slovenian.AssociateResFiles=Associate *.res files
spanish.ReadmeEnglish=ReadMe (inglés)
spanish.ReadmeJapanese=Léame (japonés)
spanish.LicenseEnglish=Licencia
spanish.AssociateRcFiles=Asociar archivos *.rc
spanish.AssociateResFiles=Asociar archivos *.res
turkish.ReadmeEnglish=ReadMe (İngilizce)
turkish.ReadmeJapanese=ReadMe (Japonca)
turkish.LicenseEnglish=Lisans
turkish.AssociateRcFiles=*.rc dosyalarını ilişkilendirin
turkish.AssociateResFiles=*.res dosyalarını ilişkilendirin
ukrainian.ReadmeEnglish=ReadMe (англійська)
ukrainian.ReadmeJapanese=ReadMe (японська)
ukrainian.LicenseEnglish=Ліцензія
ukrainian.AssociateRcFiles=Пов’язати *.rc файли
ukrainian.AssociateResFiles=Приєднати *.res файли
