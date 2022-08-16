@echo off

:: Useful for printing all variables
:: set 

:: Check if we are exporting to linux (else exit)
if not "%YYPLATFORM_name%" == "Linux" exit 0

:: Check if the run.sh script is in the project's root folder
if not exist "%YYprojectDir%\run.sh" goto warning_no_path_file

:: Change current working directory
pushd "%YYoutputFolder%"

:: Start patching the package
echo "Patching Linux (64 bit) package"

powershell Expand-Archive %YYprojectName%.zip _temp\
copy "%YYprojectDir%\run.sh" "_temp\run.sh"
powershell Compress-Archive -Force _temp\* %YYprojectName%.zip

rmdir /s /q _temp

:: Return to the previous directory
popd

echo ""
echo "############################################ INFORMATION ############################################"
echo "The package was successfully patched!"
echo " - You should set your game's entry point on the steam dashboard to: run.sh"
echo "#####################################################################################################"
echo ""

exit /b 0

:: ----------------------------------------------------------------------------------------------------
:exitError
echo "ERROR : Unable to complete"
exit /b 1

:: ----------------------------------------------------------------------------------------------------
:: If the patch file is not present on the folder, package anyway but display a warning to the user
:warning_no_path_file
   echo ""
   echo "###################################################### WARNING ######################################################"
   echo "No patch file was found on the project root directory, your project will not be patched and won't work in Steam Store"
   echo "Please refer to the manual, for more information on the Linux Steam store packaging requirements"
   echo "#####################################################################################################################"
   echo ""
exit /b 0

