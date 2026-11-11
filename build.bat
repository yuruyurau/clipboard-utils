@echo off
setlocal

set CSC="C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
set OUTDIR=bin

set OPTS=/nologo /platform:x64 /optimize+ /debug- /warn:4

if not exist %OUTDIR% mkdir %OUTDIR%

echo Building cliptext...
%CSC% %OPTS% /target:exe /out:%OUTDIR%\cliptext.exe /reference:System.Windows.Forms.dll cliptext\cliptext.cs
if errorlevel 1 goto :error

echo Building clipfile...
%CSC% %OPTS% /target:winexe /out:%OUTDIR%\clipfile.exe /reference:System.Windows.Forms.dll clipfile\clipfile.cs
if errorlevel 1 goto :error

echo.
echo Build succeeded.
echo Output: %CD%\%OUTDIR%
goto :end

:error
echo.
echo Build failed.
exit /b 1

:end
endlocal
