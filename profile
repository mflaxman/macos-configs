# http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/ (mostly)
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'

# Make a base58 password that is 64 chars long (probably too long):
alias random_password='cat /dev/random | LC_CTYPE=C tr -cd 123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz | head -c${1:-64}; echo'
alias random_readable_password='cat /dev/random | LC_CTYPE=C tr -cd 23456789abcdefghjkmnpqrstuvwxyz | head -c${1:-16}; echo'

# Homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export HOMEBREW_SHELLENV_PREFIX="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# openssl
export PATH="/usr/local/opt/openssl@3/bin:$PATH"

# For homebrew searching github and not getting rate-limited
# https://stackoverflow.com/questions/20130681/setting-github-api-token-for-homebrew
# https://github.com/settings/tokens
export HOMEBREW_GITHUB_API_TOKEN="REPLACE_WITH_REAL_TOKEN"

# Ruby Junk. Ugh.
# https://stackoverflow.com/questions/51126403/you-dont-have-write-permissions-for-the-library-ruby-gems-2-3-0-directory-ma
export GEM_HOME="$HOME/.gem"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
# from rbenv - keeping around in case of problems but as of 2021-12 I think this isn't needed
# TODO: delete in the future
# export SDKROOT=$(xcrun --show-sdk-path)
# export PATH="$HOME/.gem/ruby/2.6.9/bin:$PATH
# export PATH="$HOME/.gem/ruby/3.0.3/bin:$PATH
# https://jekyllrb.com/docs/installation/macos/
# Not naming a specific ruby version on this step for future-proofing, hopefully that doesn't cause problems
# export PATH="/usr/local/opt/ruby/bin:$PATH"

# https://docs.python-guide.org/starting/install3/osx/
# export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Add Visual Studio Code (code)
# https://code.visualstudio.com/docs/setup/mac
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Golang
# https://gist.github.com/vsouza/77e6b20520d07652ed7d
# https://sourabhbajaj.com/mac-setup/Go/README.html
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# https://github.com/pyenv/pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
