#/usr/bin/env bash

set -e

VERSION=1.80.2

curl --output-dir /tmp -O https://pkgs.tailscale.com/stable/Tailscale-$VERSION-macos.pkg

sudo installer -pkg /tmp/Tailscale-$VERSION-macos.pkg -target /

