; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "RaiseTheEmpires"
#define MyAppVersion "0.03a"
#define MyAppPublisher "RaiseTheEmpires"
#define MyAppURL "https://github.com/AcidCaos/empires-and-allies"
#define MyAppExeName "empires-server.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{19162E79-2BB2-48A6-866B-822AC47CEB0D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; The [Icons] "quicklaunchicon" entry uses {userappdata} but its [Tasks] entry has a proper IsAdminInstallMode Check.
UsedUserAreasWarning=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
PrivilegesRequired=lowest
;PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\empires-installer
OutputBaseFilename=empires-setup
SetupIconFile=C:\empires\build-tools\icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "icelandic"; MessagesFile: "compiler:Languages\Icelandic.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 6.1; Check: not IsAdminInstallMode

[Files]
;x64
Source: "C:\dist_mini003_x64\empires-server.exe"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: ignoreversion 
;x86
Source: "C:\dist_mini003_x86\empires-server.exe"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: solidbreak ignoreversion 
;common
Source: "C:\empires\allies\*"; DestDir: "{userdocs}\My Games\{#MyAppName}\allies"; Flags: solidbreak ignoreversion recursesubdirs createallsubdirs
Source: "C:\empires\assets\*"; DestDir: "{app}\assets"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\empires\templates\*"; DestDir: "{app}\templates"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\empires\gamesettings-converted.json"; DestDir: "{userdocs}\My Games\{#MyAppName}"; Flags: ignoreversion
Source: "C:\empires\questsettings-converted.json"; DestDir: "{userdocs}\My Games\{#MyAppName}"; Flags: ignoreversion
Source: "C:\empires\save.db"; DestDir: "{userdocs}\My Games\{#MyAppName}"; Flags: onlyifdoesntexist uninsneveruninstall
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[INI]
Filename: "{app}\RaiseTheEmpires.ini"; Section: "Info"; Flags: uninsdeletesection
Filename: "{app}\RaiseTheEmpires.ini"; Section: "Info"; Key: "Name"; String: "{#MyAppName}"
Filename: "{app}\RaiseTheEmpires.ini"; Section: "Info"; Key: "Version"; String: "{#MyAppVersion}"
Filename: "{app}\RaiseTheEmpires.ini"; Section: "Info"; Key: "Publisher"; String: "{#MyAppPublisher}"
Filename: "{app}\RaiseTheEmpires.ini"; Section: "Info"; Key: "URL"; String: "{#MyAppURL}"
Filename: "{app}\RaiseTheEmpires.ini"; Section: "Info"; Key: "Binary"; String: "{#MyAppExeName}"
Filename: "{app}\RaiseTheEmpires.ini"; Section: "InstallFolders"; Flags: uninsdeletesection
Filename: "{app}\RaiseTheEmpires.ini"; Section: "InstallFolders"; Key: "InstallPath"; String: "{app}"
Filename: "{app}\RaiseTheEmpires.ini"; Section: "InstallFolders"; Key: "MyGamesPath"; String: "{userdocs}\My Games\{#MyAppName}"
Filename: "{app}\RaiseTheEmpires.ini"; Section: "InstallSettings"; Flags: uninsdeletesection
Filename: "{app}\RaiseTheEmpires.ini"; Section: "InstallSettings"; Check: Is64BitInstallMode; Key: "Arch"; String: "x64"
Filename: "{app}\RaiseTheEmpires.ini"; Section: "InstallSettings"; Check: not Is64BitInstallMode; Key: "Arch"; String: "x86"

[UninstallDelete]
Type: files; Name: "{app}\RaiseTheEmpires.ini"
Type: dirifempty; Name: "{app}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

