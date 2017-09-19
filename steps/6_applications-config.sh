echo "---------------------------------"
echo " >> 6. configuring apps <<"
echo "---------------------------------"

# git
git config --global core.editor /usr/bin/vim
git config --global transfer.fsckobjects true

# iterm
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

# startup apps
./bin/loginitems-add "ShiftIt" "/Applications/ShiftIt.app" "false" >> /dev/null
./bin/loginitems-add "Flycut" "/Applications/Flycut.app" "false" >> /dev/null
./bin/loginitems-add "Docker" "/Applications/Docker.app" "false" >> /dev/null

# vim
pushd ~/ > /dev/null
  if [ ! -d ~/.vim ]; then
      git clone https://github.com/pivotal/vim-config.git ~/.vim
      ~/.vim/bin/install
  fi
popd > /dev/null

# intellij
pushd ~/workspace > /dev/null
  if [ ! -d ~/workspace/pivotal_ide_prefs ]; then
      git clone https://github.com/pivotal/pivotal_ide_prefs.git
  fi

  pushd pivotal_ide_prefs/cli/ > /dev/null
    ./bin/ide_prefs install --ide=intellij
  popd > /dev/null
popd > /dev/null
