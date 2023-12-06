#!/bin/bash env 

set -e

PACKAGE=maven
VERSION="3.9"

if [ $# -eq 0 ]
	then
		echo "No arguments provided"
fi
case "$1" in
	install)
		brew install $PACKAGE@$VERSION
		;;
	uninstall)
		brew uninstall $PACKAGE@$VERSION
		;;
esac

