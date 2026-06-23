export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:/Users/tylerboyd/bin/openapitools/"

export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
export EDITOR="code --wait"
export LD_LIBRARY="$LD_LIBRARY:/opt/homebrew/opt/mono-libgdiplus/lib/"

# Set PATH, MANPATH, etc., for Homebrew.
# eval "$(/opt/homebrew/bin/brew shellenv)"
brewcache="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/brew-shellenv.zsh"
if [[ ! -s $brewcache ]]; then
  mkdir -p ${brewcache:h}
  brew shellenv >| $brewcache
fi
source $brewcache

. /opt/homebrew/opt/asdf/libexec/asdf.sh
