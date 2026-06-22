@echo off
cls
echo ========================================
echo     Updating Archives Text Kit (Windows)
echo ========================================

:: Setup exact paths for your repository and local directory
set "REPO_URL=https://github.com/jbrcka/archives-text-kit/archive/refs/heads/main.zip"
set "TARGET_DIR=%APPDATA%\espanso\match\packages\archives-text-kit"
set "TEMP_ZIP=%TEMP%\archives_update.zip"
set "TEMP_EXTRACTED=%TEMP%\archives_extracted"

echo Creating target directory...
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"

echo Downloading updates from GitHub...
curl -L -o "%TEMP_ZIP%" "%REPO_URL%"

echo Extracting updates...
if exist "%TEMP_EXTRACTED%" rmdir /s /q "%TEMP_EXTRACTED%"
mkdir "%TEMP_EXTRACTED%"
tar -xf "%TEMP_ZIP%" -C "%TEMP_EXTRACTED%"

echo Overlaying files into Espanso...
xcopy "%TEMP_EXTRACTED%\archives-text-kit-main\*" "%TARGET_DIR%\" /E /Y /Q

echo Cleaning up temporary files...
del "%TEMP_ZIP%" /f /q
rmdir /s /q "%TEMP_EXTRACTED%"

echo Restarting Espanso to apply updates...
espanso restart

echo ----------------------------------------
echo  SUCCESS: archives-text-kit is updated!
echo ----------------------------------------
pause