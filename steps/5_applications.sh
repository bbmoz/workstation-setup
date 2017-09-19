echo "---------------------------------"
echo " >> 5. installing apps <<"
echo "---------------------------------"

set +e

brew tap caskroom/cask

# utility
brew cask install flycut
brew cask install shiftit
brew cask install postman
brew cask install recordit

# terminal
brew cask install iterm2

# browser
brew cask install google-chrome

# productivity
brew cask install slack
brew cask install screenhero
brew cask install zoomus

# editor
brew cask install macvim
brew cask install intellij-idea

# workflow
brew cask install docker
pushd /usr/local/etc/bash_completion.d > /dev/null
  ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
  ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
  ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
popd > /dev/null
brew install direnv
cp files/direnv.bash ~/.bash_it/custom/direnv.bash

# git
brew install git

# git pairing
brew tap git-duet/tap
brew install git-duet
cp files/.pairs ~/.git-authors

set -e
