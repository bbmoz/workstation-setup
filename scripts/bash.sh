echo "---------------------------------"
echo " >> configuring bash <<"
echo "---------------------------------"

brew install grc
brew install coreutils
brew install watch
cp files/dircolors.ansi-dark ~/.dircolors
cp files/.inputrc ~/.inputrc
rm -rf ~/.bash_it
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
cp files/git_initials.bash ~/.bash_it/custom
cp files/iterm.theme.bash ~/.bash_it/themes/bobby/bobby.theme.bash
~/.bash_it/install.sh -s
source ~/.bash_profile
bash-it enable completion git
bash-it enable plugin ssh
bash-it enable completion ssh
