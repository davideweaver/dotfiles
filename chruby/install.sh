# uses ruby-install to install our version
#
# --enable-shared (https://www.rubyonmac.dev/how-to-install-ruby-on-macos-12-6-apple-silicon)

if ! [ -d "$HOME/.rubies/ruby-3.1.2" ]
then
    echo "> installing ruby 3.1.2"
    ruby-install ruby-3.1.2 -- --enable-shared
fi
