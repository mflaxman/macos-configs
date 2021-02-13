# TODO: install brew (safely) instructions

Regular
```bash
$ brew install ag aspell automake colordiff git-delta go htop ipython jq macvim pandoc postgresql pyenv ruby sqlite tcl-tk tree vim
```

Casks:
```bash
$ brew cask install atom brave-browser chromium firefox keepassx mactex openssl@1.1 postgres soundflower soundflowerbed transmission tunnelblick virtualbox visual-studio-code vlc
$ brew tap heroku/brew && brew install heroku
```
TODO: migrate to keepassxc

Install python in `pyinstaller`-friendly way:
```bash
$ time env PYTHON_CONFIGURE_OPTS="--enable-framework" pyenv install 3.8.6
```
(This takes ~4m. Repeat replacing `3.8.6` with every version you want to install)
