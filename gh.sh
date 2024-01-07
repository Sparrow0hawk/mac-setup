#!/bin/bash env 

set -e


if [ $# -eq 0 ]
	then
		echo "No arguments provided"
fi
case "$1" in
	install)
		brew install gh
		;;
	uninstall)
		brew uninstall gh
		;;
esac

