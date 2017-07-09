#!/usr/bin/env bash

echo "---------------------------------"
echo " >> caching password for setup <<"
echo "---------------------------------"

set -e

sudo -K
sudo true

clear

pushd "$(dirname "$0")" > /dev/null
  source scripts/xcode-license.sh
  source scripts/homebrew.sh
  source scripts/osx.sh
  source scripts/bash.sh
  source scripts/cloud.sh
  source scripts/applications.sh
  source scripts/applications-config.sh
  source scripts/git-aliases.sh
  source scripts/languages.sh
  source scripts/finished.sh
popd > /dev/null
