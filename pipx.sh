#!/bin/bash env

# script for installing pipx
# this is the recommended route on macOS
# although is separates pipx from the system python install

set -e

brew update
brew install pipx
pipx ensurepath
