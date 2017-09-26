#!/usr/bin/env bash

echo "---------------------------------"
echo " >> caching password for setup <<"
echo "---------------------------------"

set -e

sudo -K
sudo true

clear

pushd "$(dirname "$0")" > /dev/null
  source steps/1_homebrew.sh
  source steps/2_osx.sh
  source steps/3_bash.sh
  source steps/4_applications.sh
  source steps/5_applications-config.sh
  source steps/6_aliases.sh
  source steps/7_languages.sh
  source steps/8_reboot.sh
popd > /dev/null
