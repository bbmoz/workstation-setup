echo "---------------------------------"
echo " >> 8. installing languages <<"
echo "---------------------------------"

set +e

# java
brew cask install java
brew install maven
brew install gradle
brew install springboot

# ruby
brew install rbenv
cp files/.irbrc ~/.irbrc
brew install readline
eval "$(rbenv init -)"
rbenv install 2.4.1 --skip-existing
rbenv global 2.4.1
gem install bundler
rbenv rehash

# node
brew install nvm
cp files/nvm.bash ~/.bash_it/custom/nvm.bash
source files/nvm.bash
nvm install 6.11.3

set -e
