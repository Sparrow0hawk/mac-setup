#!/bin/bash env 

set -e


if [ $# -eq 0 ]
	then
		echo "No arguments provided"
fi
case "$1" in
	install)
		npm install -g @bitwarden/cli
		;;
	uninstall)
		npm uninstall -g @bitwarden/cli
		;;
esac

