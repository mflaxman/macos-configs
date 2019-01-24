# http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/ (mostly)
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'

# Make a base58 password that is 64 chars long (probably too long):
alias random_password='cat /dev/random | LC_CTYPE=C tr -cd 123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz | head -c${1:-64}; echo'

# https://coderwall.com/p/euwpig/a-better-git-log
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# For homebrew searching github and not getting rate-limited
# https://stackoverflow.com/questions/20130681/setting-github-api-token-for-homebrew
# https://github.com/settings/tokens
export HOMEBREW_GITHUB_API_TOKEN="REPLACE WITH REAL TOKEN"

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
