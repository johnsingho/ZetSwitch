; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ZetSwitch"
#define MyAppVersion "0.4.0"
#define MyAppPublisher "Tomas Skarecky"
#define MyAppURL "https://sourceforge.net/projects/zetswitch/"
#define MyAppExeName "ZetSwitch.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CCEFBEFB-32D9-41CB-988C-E471B36DDE8A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=..\license.txt
OutputDir=..\Setup
OutputBaseFilename=ZetSwitch {#MyAppVersion}
SetupIconFile=..\icon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\bin\Release\ZetSwitch.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\Interop.IWshRuntimeLibrary.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Data\*"; DestDir: "{app}\Data"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\bin\Release\IPAddressControlLib.dll"; DestDir: "{app}"; 
Source: "..\bin\Release\ZetSwitchData.dll"; DestDir: "{app}"; 
Source: "..\..\ZetswitcWorker\bin\Release\ZetswitchWorker.exe"; DestDir: "{app}"; 
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\errorlog.txt"
Type: files; Name: "{app}\Data\profiles.xml"
Type: files; Name: "{app}\Data\Images\*.bmp"
Type: dirifempty; Name: "{app}\Data\Images"
Type: dirifempty; Name: "{app}\Data"
Type: dirifempty; Name: "{app}"
