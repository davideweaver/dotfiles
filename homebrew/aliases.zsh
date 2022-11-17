# for intel x86_64 brew
if test "$(arch)" = "arm64"
then

  # alias for running x86 version of homebrew
  # >brew_x86 ls
  alias brew_x86='arch -x86_64 /usr/local/homebrew/bin/brew'

  # tells npm how to find x86 libs when building node-rdkafka
  export LDFLAGS="-L/usr/local/homebrew/Cellar/lz4/1.9.4/lib"
fi
