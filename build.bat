@echo off
setlocal

set CSC="C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
set OUTDIR=bin

if not exist %OUTDIR% mkdir %OUTDIR%

echo Building cliptext...
%CSC% /target:exe /out:%OUTDIR%\cliptext.exe /reference:System.Windows.Forms.dll cliptext\cliptext.cs
if errorlevel 1 goto :error

echo Building clipfile...
%CSC% /target:winexe /out:%OUTDIR%\clipfile.exe /reference:System.Windows.Forms.dll clipfile\clipfile.cs
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
