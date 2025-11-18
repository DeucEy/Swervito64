@echo off
set errorlevel=
IF NOT DEFINED SDKROOT ( exit /B 0 )
IF NOT DEFINED Swervito64_cert_file ( exit /B 0 )
IF NOT DEFINED Swervito64_cert_password ( exit /B 0 )

"%SDKROOT%\bin\x86\signtool.exe" sign /f "%Swervito64_cert_file%" /p %Swervito64_cert_password% /t http://timestamp.verisign.com/scripts/timstamp.dll "%~1"
exit /B %errorlevel%