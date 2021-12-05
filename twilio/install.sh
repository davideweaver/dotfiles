#!/bin/sh

# requires node > 12
. "$HOME/.nvm/nvm.sh"
nvm use 16.13.1

if ! command -v twilio &> /dev/null
then
    # core cli
    npm install -g twilio-cli

    # plugins
    twilio plugins:install @dabblelab/plugin-autopilot
    twilio plugins:install @twilio-labs/plugin-flex
    twilio plugins:install @twilio-labs/plugin-serverless

    twilio autocomplete zsh
fi
