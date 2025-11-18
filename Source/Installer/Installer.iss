 #define BaseDir ExtractFilePath(ExtractFilePath(ExtractFilePath(SourcePath)))
#define AppVersion GetFileVersion(BaseDir + "\Bin\" + Platform + "\" + Configuration + "\Swervito64.exe")

[Setup]
AppId={{BEB5FB69-4080-466F-96C4-F15DF271718B}
AppName=Swervito64
AppVersion={#AppVersion}
DefaultDirName={pf32}\Swervito64 Dev 4.0
VersionInfoVersion={#AppVersion}
OutputDir={#BaseDir}\Bin\{#Platform}\{#Configuration}
OutputBaseFilename=Setup Swervito64 Dev 4.0
VersionInfoDescription=Installation Setup of Swervito64 Dev 4.0
Compression=lzma2/ultra64
WizardImageFile=Installer-Sidebar.bmp
WizardSmallImageFile=Pj64LogoSmallImage.bmp
DisableProgramGroupPage=yes
DisableReadyPage=yes
Uninstallable=not IsTaskSelected('portablemode')
UninstallDisplayIcon={uninstallexe}
SetupIconFile={#BaseDir}\Source\Swervito64\UserInterface\Icons\pj64.ico

[Run]
Filename: "{app}\Swervito64.exe"; Description: "{cm:LaunchProgram,{#StringChange('Swervito64', '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Files]
Source: "{#BaseDir}\Bin\{#Platform}\{#Configuration}\Swervito64.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BaseDir}\Config\Video.rdb"; DestDir: "{app}\Config"
Source: "{#BaseDir}\Config\Audio.rdb"; DestDir: "{app}\Config"
Source: "{#BaseDir}\Config\Cheats\*.cht"; DestDir: "{app}\Config\Cheats"
Source: "{#BaseDir}\Config\Enhancements\*.enh"; DestDir: "{app}\Config\Enhancements"
Source: "{#BaseDir}\Config\Swervito64.rdb"; DestDir: "{app}\Config"
Source: "{#BaseDir}\Config\Swervito64.rdx"; DestDir: "{app}\Config"
Source: "{#BaseDir}\Lang\*.pj.Lang"; DestDir: "{app}\Lang"
Source: "{#BaseDir}\Plugin\{#Platform}\Audio\Jabo_Dsound.dll"; DestDir: "{app}\Plugin\Audio"
Source: "{#BaseDir}\Plugin\{#Platform}\Audio\Swervito64-Audio.dll"; DestDir: "{app}\Plugin\Audio"
Source: "{#BaseDir}\Plugin\{#Platform}\GFX\Jabo_Direct3D8.dll"; DestDir: "{app}\Plugin\GFX"
Source: "{#BaseDir}\Plugin\{#Platform}\GFX\Swervito64-Video.dll"; DestDir: "{app}\Plugin\GFX"
Source: "{#BaseDir}\Plugin\{#Platform}\GFX\GLideN64\*"; DestDir: "{app}\Plugin\GFX\GLideN64"; Flags: recursesubdirs
Source: "{#BaseDir}\Plugin\{#Platform}\Input\PJ64_NRage.dll"; DestDir: "{app}\Plugin\Input"
Source: "{#BaseDir}\Plugin\{#Platform}\Input\Swervito64-Input.dll"; DestDir: "{app}\Plugin\Input"
Source: "{#BaseDir}\Plugin\{#Platform}\RSP\Swervito64-RSP.dll"; DestDir: "{app}\Plugin\RSP"
Source: "{#BaseDir}\Scripts\example.js"; DestDir: "{app}\Scripts"
Source: "{#BaseDir}\Scripts\api_documentation.js"; DestDir: "{app}\Scripts"
Source: "{#BaseDir}\JS-API-Documentation.html"; DestDir: "{app}"

[Dirs]
Name: "{app}\Config"; Permissions: everyone-full
Name: "{app}\Config\Cheats-User"; Permissions: everyone-full
Name: "{app}\Logs"; Permissions: everyone-full
Name: "{app}\Save"; Permissions: everyone-full
Name: "{app}\Screenshots"; Permissions: everyone-full
Name: "{app}\Textures"; Permissions: everyone-full
Name: "{app}\Plugin\GFX\GLideN64"; Permissions: everyone-full

[Icons]
Name: "{commondesktop}\Swervito64"; Filename: "{app}\Swervito64.exe"; Tasks: desktopicon
Name: "{commonprograms}\Swervito64"; Filename: "{app}\Swervito64.exe"

[Tasks]
Name: desktopicon; Description: "Create a &desktop icon"
Name: portablemode; Description: "&Portable Mode"; Flags: unchecked
