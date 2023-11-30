#!/bin/bash env 
# gcloud

set -e


if [ $# -eq 0 ]
	then
		echo "No arguments provided"
fi
case "$1" in
	install)
		install_gcloud();
		;;
	uninstall)
		uninstall_gcloud();
		;;
esac


function install_gcloud {
    curl -LO https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-455.0.0-darwin-arm.tar.gz --output-dir ~/Downloads

    tar -xzf ~/Downloads/google-cloud-cli-455.0.0-darwin-arm.tar.gz -C $HOME

    cd ~/google-cloud-sdk

    # will be prompted for inputs
    ./install.sh
}

function uninstall_gcloud {
    rm -rf $HOME/gcloud-cloud-sk
}
