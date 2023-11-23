@echo off
net session >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Administrator privileges is needed to run this script.
    pause
    exit
)

if "%1"=="" (set /p "UE=Enter Target Unreal Engine Path: ") else (set UE=%1)
rmdir /S /Q %UE%\Engine\Source\ThirdParty\DrJit

mkdir %UE%\Engine\Source\ThirdParty\DrJit\Include
mklink /D %UE%\Engine\Source\ThirdParty\DrJit\Include\drjit %~dp0include\drjit
mklink /D %UE%\Engine\Source\ThirdParty\DrJit\Include\drjit-core %~dp0ext\drjit-core\include\drjit-core
xcopy %~dp0DrJit.Build.cs %UE%\Engine\Source\ThirdParty\DrJit
pause
