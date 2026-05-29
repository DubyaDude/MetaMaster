#define MyAppName "MetaMaster"
#define MyAppVersion "1.1.0"
#define MyAppPublisher "DubyaDude @ RubyEdge LLC"
#define MyAppURL "https://rubyedge.com/"

#define MyAppBuildPath "F:\Projects\MetaMaster\Build"
#define MyAppExeName "MetaMaster.exe"

#define MyAppAssetPath "F:\Projects\MetaMaster\MetaMaster\assets"
#define MyAppIcoName "MetaMaster.ico"             
#define MyAppUninstallIcoName "MetaMasterUninstall.ico"

#define MyAppLicensesPath "F:\Projects\MetaMaster\licenses"
#define MyAppMetadataExtractorLicenseName "MetadataExtractor.LICENSE"
#define MyAppLicenseNoticeName "NOTICE.txt"     
#define MyAppMetaMasterLicenseName "MetaMaster.LICENSE" 

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{FACA909A-72C3-4361-9E1B-65429ACD3C2D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir={#MyAppBuildPath}\Installer
OutputBaseFilename={#MyAppName}Setup-{#MyAppVersion}
Compression=lzma
SolidCompression=yes
WizardStyle=modern
SetupIconFile={#MyAppAssetPath}\{#MyAppIcoName}                
UninstallDisplayIcon={#MyAppAssetPath}\{#MyAppUninstallIcoName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "arabic"; MessagesFile: "compiler:Languages\Arabic.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "bulgarian"; MessagesFile: "compiler:Languages\Bulgarian.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "korean"; MessagesFile: "compiler:Languages\Korean.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "swedish"; MessagesFile: "compiler:Languages\Swedish.isl"
Name: "tamil"; MessagesFile: "compiler:Languages\Tamil.isl"
Name: "thai"; MessagesFile: "compiler:Languages\Thai.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Files]
; App files
Source: "{#MyAppBuildPath}\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion

; App licenses
Source: "{#MyAppLicensesPath}\{#MyAppMetadataExtractorLicenseName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppLicensesPath}\{#MyAppLicenseNoticeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppLicensesPath}\{#MyAppMetaMasterLicenseName}"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Registry]
; Add 'MetaMaster' to Context Menu:
Root: "HKCR"; Subkey: "*\shell\MetaMaster"; ValueType: string; ValueName: ""; ValueData: "View Metadata"; Flags: uninsdeletekey 
Root: "HKCR"; Subkey: "*\shell\MetaMaster"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey    
Root: "HKCR"; Subkey: "*\shell\MetaMaster\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}""  ""%1"""; Flags: uninsdeletekey

; Add separator before and after the menu item:
; Root: "HKCR"; Subkey: "*\shell\MetaMaster"; ValueType: string; ValueName: "SeparatorBefore"; ValueData: ""; Flags: uninsdeletekey
; Root: "HKCR"; Subkey: "*\shell\MetaMaster"; ValueType: string; ValueName: "SeparatorAfter"; ValueData: ""; Flags: uninsdeletekey
