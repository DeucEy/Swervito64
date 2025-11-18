@ECHO OFF
SETLOCAL

echo Setting up build structure...

set BuildType=Release
if not "%1" == "" set BuildType=%1
if "%1" == "debug" set BuildType=Debug
if "%1" == "release" set BuildType=Release

set Platform=Win32
if not "%2" == "" set Platform=%2
if "%2" == "x64" set Platform=x64
if "%2" == "win32" set Platform=Win32

echo Build Type: %BuildType%
echo Platform: %Platform%
echo Setting up directories...

set rootDir=%~dp0..\..
set buildDir=%rootDir%\bin\%Platform%\%BuildType%
echo Root Directory: %rootDir%
echo Build Directory: %buildDir%

echo Copying Language files...
xcopy "%rootDir%\Lang" "%buildDir%\Lang" /E /I /Y /D

echo Copying Plugins...
xcopy "%rootDir%\Plugin\%Platform%" "%buildDir%\Plugin" /E /I /Y /D

:end
ENDLOCAL
exit /B 0
