echo "---------------------------------"
echo " >> 3. customizing osx <<"
echo "---------------------------------"

defaults write com.apple.menuextra.clock "DateFormat" 'EEE MMM d  h:mm:ss a'
killall SystemUIServer

# hide dock
defaults write com.apple.dock autohide -bool true
killall Dock

# fast key repeat rate
defaults write ~/Library/Preferences/.GlobalPreferences KeyRepeat -int 1
defaults write ~/Library/Preferences/.GlobalPreferences InitialKeyRepeat -int 15

# display full path in finder
defaults write com.apple.finder '_FXShowPosixPathInTitle' -bool true

# stop photos from opening automatically
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# remove standard dock icons, add chrome and iterm
curl https://raw.githubusercontent.com/kcrawford/dockutil/master/scripts/dockutil > /usr/local/bin/dockutil
chmod a+rx,go-w /usr/local/bin/dockutil
dockutil --list | awk -F\t '{print "dockutil --remove \""$1"\" --no-restart"}' | sh
dockutil --add /Applications/Google\ Chrome.app --no-restart
dockutil --add /Applications/iTerm.app
