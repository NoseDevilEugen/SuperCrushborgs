#!/bin/bash
set echo off

# Useful for printing all variables
# ( set -o posix ; set ) | less

function warning_no_path_file() {

    echo ""
    echo "###################################################### WARNING ######################################################"
    echo "No patch file was found on the project root directory, your project will not be patched and won't work in Steam Store"
    echo "Please refer to the manual, for more information on the Linux Steam store packaging requirements"
    echo "#####################################################################################################################"
    echo ""
    exit 0
}

# Check if we are exporting to linux (else exit)
if [[ "$YYPLATFORM_name" != "Linux" ]]; then exit 0; fi

# Check if the run.sh script is in the project's root folder
if [[ ! -d "$YYprojectDir/run.sh" ]]; then  warning_no_path_file; fi

# Change current working directory
pushd "$YYoutputFolder" 1>/dev/null

# Start patching the package
echo "Patching Linux (64 bit) package"

unzip ${YYprojectName}.zip -d ./_temp
cp "$YYprojectDir/run.sh" "_temp/run.sh"
cd _temp; zip -FS -r ../${YYprojectName}.zip *

cd ..
rm -r _temp

rmdir /s /q _temp

# Return to the previous directory
popd 1>/dev/null

echo ""
echo "############################################ INFORMATION ############################################"
echo "The package was successfully patched!"
echo " - You should set your game's entry point on the steam dashboard to: run.sh"
echo "#####################################################################################################"
echo ""

exit 0

