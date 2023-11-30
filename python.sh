#!/bin/bash env

# script for installing python 3.11
# 

set -e

PY_VER=3.12.0

if [ $# -eq 0 ]
	then
		echo "No arguments provided"
fi
case "$1" in
	install)
		cd ~/Downloads
        curl -LO https://www.python.org/ftp/python/$PY_VER/python-$PY_VER-macos11.pkg
		sudo installer -pkg python-$PY_VER-macos11.pkg -target /
        rm python-$PY_VER-macos11.pkg
        cd -
        ;;
	uninstall)
		sudo rm -rf /Applications/Python\ 3.12/
        sudo rm -rf /Library/Frameworks/Python.framework/
		;;
esac


