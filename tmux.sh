#!/bin/bash env 
# installing tmux

set -e


if [ $# -eq 0 ]
	then
		echo "No arguments provided"
fi
case "$1" in
	install)
		brew install tmux
		;;
	uninstall)
		brew uninstall tmux
		;;
esac
