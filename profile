# http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/ (mostly)
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'

# Make a base58 password that is 64 chars long (probably too long):
alias random_password='cat /dev/random | LC_CTYPE=C tr -cd 123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz | head -c${1:-64}; echo'
alias random_readable_password='cat /dev/random | LC_CTYPE=C tr -cd 23456789abcdefghjkmnpqrstuvwxyz | head -c${1:-16}; echo'

# For homebrew searching github and not getting rate-limited
# https://stackoverflow.com/questions/20130681/setting-github-api-token-for-homebrew
# https://github.com/settings/tokens
export HOMEBREW_GITHUB_API_TOKEN="REPLACE_WITH_REAL_TOKEN"

# Ruby Junk. Ugh.
# https://stackoverflow.com/questions/51126403/you-dont-have-write-permissions-for-the-library-ruby-gems-2-3-0-directory-ma
export GEM_HOME="$HOME/.gem"
# Sketchy fix, not sure why these are still required
# (see if you can get by without it on next installation or just switch to rbenv altogether?):
# https://help.rubygems.org/discussions/problems/739-how-to-run-applications-installed-by-gem
# export PATH=$PATH:/Users/mflaxman/.gem/bin
# export PATH="/usr/local/opt/ruby/bin:$PATH"

# https://stackoverflow.com/a/7213356
alias vim='/usr/local/bin/vim'

# https://docs.python-guide.org/starting/install3/osx/
# export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Add Visual Studio Code (code)
# https://code.visualstudio.com/docs/setup/mac
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Homebrew hack for openssl (not libressl)
# https://stackoverflow.com/questions/56639315/updating-openssl-to-1-1-1-on-macos/62723840#62723840
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# https://gist.github.com/vsouza/77e6b20520d07652ed7d
# https://sourabhbajaj.com/mac-setup/Go/README.html
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Homebrew's sbin was not found in your PATH but you have installed formulae that put executables in /usr/local/sbin:
export PATH="/usr/local/sbin:$PATH"

# https://github.com/pyenv/pyenv
# unsure if this belongs in .bashrc instead?
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
