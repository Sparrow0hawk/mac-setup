#!/bin/bash env 

set -e

if [ $# -eq 0 ]
	then
		echo "No arguments provided"
fi
case "$1" in
	install)
		brew install openjdk@21
        sudo ln -sfn $HOMEBREW_PREFIX/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
        echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.bashrc
		;;
	uninstall)
		brew uninstall openjdk@21
		sudo unlink /Library/Java/JavaVirtualMachines/openjdk.jdk
		grep -v 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' ~/.bashrc > ~/.bashrc
		;;
esac

