#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

fi

# if we're on an M1, then we should also install homebrew for x86
# this makes node-rdkafka work
# https://medium.com/mkdir-awesome/how-to-install-x86-64-homebrew-packages-on-apple-m1-macbook-54ba295230f
#
# Once it's installed, install node-rdkafka dependencies
#
if test "$(arch)" = "arm64"
then

  if ! [ -d "/usr/local/homebrew" ]
  then
    echo "> installing Homebrew for x86"

    mkdir homebrewx86
    cd homebrewx86
    curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --
    sudo mv Home* /usr/local/homebrew
    cd -
    rm -rf homebrewx86

    echo "> installing x86 node-rdkafka dependencies"

    arch -x86_64 /usr/local/homebrew/bin/brew install lz@1.9.4
    arch -x86_64 /usr/local/homebrew/bin/brew install librdkafka@1.9.2
  fi

fi

exit 0
