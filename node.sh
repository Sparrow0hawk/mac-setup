#!/bin/bash env 

set -e

PACKAGE=node

if [ $# -eq 0 ]
	then
		echo "No arguments provided"
fi
case "$1" in
	install)
		brew install $PACKAGE
		;;
	uninstall)
		brew uninstall $PACKAGE
		;;
esac

