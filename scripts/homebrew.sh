echo "---------------------------------"
echo " >> installing homebrew <<"
echo "---------------------------------"

if ! hash brew 2>/dev/null; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
sudo chown -R $(whoami) /usr/local/bin
brew tap homebrew/services
brew tap pivotal/tap
brew upgrade
brew cleanup
echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile
