#!/bin/sh
#
# nvm
#
# nvm is a POSIX-compliant bash script to manage multiple active node.js versions

# Check for nvm
if ! [ -d "${HOME}/.nvm" ]
then
  echo "  Installing nvm for you."
  git clone https://github.com/nvm-sh/nvm.git $HOME/.nvm
  cd $HOME/.nvm && git checkout v0.35.3
fi

# set default node version
. "$HOME/.nvm/nvm.sh"
nvm install 16.13.1
nvm use 16.13.1
nvm alias default 16.13.1

exit 0
