#!/bin/sh

# https://github.com/davideweaver/custom-finder-right-click-menu#using-the-application
# Enable "FinderMenuItems" in "System Preferences > Extensions > Finder Extensions" in case it is not already enabled.

export FM_DIR="$HOME/.findermenu"
export FM_APP="/Applications/FinderMenu.app"

if ! [ -d "${FM_DIR}" ]
then
    ln -s ~/.dotfiles/findermenu/.findermenu ${FM_DIR}
fi

if ! [ -f "${FM_APP}" ]
then
    cp -r ~/.dotfiles/findermenu/FinderMenu.app ${FM_APP}
fi

open ${FM_APP}
