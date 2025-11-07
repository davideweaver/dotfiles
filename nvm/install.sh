#!/bin/sh
#
# nvm
#
# nvm is a POSIX-compliant bash script to manage multiple active node.js versions

export NVM_DIR="$HOME/.nvm"

# Check for nvm
if ! [ -d "${NVM_DIR}" ]
then
  echo "  Installing nvm for you."
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
fi

# load nvm for other installs that need node
\. "$NVM_DIR/nvm.sh"

# set default node version
nvm install 20.5.1
nvm use 20.5.1
nvm alias default 20.5.1

exit 0
