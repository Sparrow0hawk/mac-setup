#!/bin/bash env

# script for installing python 3.11
# 

set -e

if [ $# -eq 0 ]
	then
		echo "No arguments provided"
fi
case "$1" in
	install)
		cd ~/Downloads
        curl -LO https://www.python.org/ftp/python/3.11.5/python-3.11.5-macos11.pkg
		sudo installer -pkg python-3.11.5-macos11.pkg -target /
        rm python-3.11.5-macos11.pkg
        cd -
        ;;
	uninstall)
		sudo rm -rf /Applications/Python\ 3.11/
        sudo rm -rf /Library/Frameworks/Python.framework/
		;;
esac


