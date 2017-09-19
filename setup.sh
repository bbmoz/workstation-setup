#!/usr/bin/env bash

echo "---------------------------------"
echo " >> caching password for setup <<"
echo "---------------------------------"

set -e

sudo -K
sudo true

clear

pushd "$(dirname "$0")" > /dev/null
  source steps/1_xcode-license.sh
  source steps/2_homebrew.sh
  source steps/3_osx.sh
  source steps/4_bash.sh
  source steps/5_applications.sh
  source steps/6_applications-config.sh
  source steps/7_aliases.sh
  source steps/8_languages.sh
  source steps/9_reboot.sh
popd > /dev/null
