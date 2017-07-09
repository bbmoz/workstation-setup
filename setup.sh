#!/usr/bin/env bash

echo "---------------------------------"
echo " >> caching password for setup <<"
echo "---------------------------------"

set -e

sudo -K
sudo true

clear

pushd "$(dirname "$0")" > /dev/null
  source scripts/1_xcode-license.sh
  source scripts/2_homebrew.sh
  source scripts/3_osx.sh
  source scripts/4_bash.sh
  source scripts/5_applications.sh
  source scripts/6_applications-config.sh
  source scripts/7_aliases.sh
  source scripts/8_languages.sh
  source scripts/9_reboot.sh
popd > /dev/null
