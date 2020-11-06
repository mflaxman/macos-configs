# TODO: install brew (safely) instructions

Regular
```bash
$ brew install ag aspell automake colordiff go htop ipython jq macvim postgresql pyenv ruby sqlite tcl-tk tree vim
```

Casks:
```bash
$ brew cask install atom freesmug-chromium keepassx openssl@1.1 postgres soundflower soundflowerbed transmission tunnelblick virtualbox visual-studio-code vlc
$ brew tap heroku/brew && brew install heroku
```
TODO: migrate to keepassxc

You may need to follow [these instructions for installing tcl-tk with python3](https://stackoverflow.com/questions/60469202/unable-to-install-tkinter-with-pyenv-pythons-on-macos):
```bash
$ time env PATH="$(brew --prefix tcl-tk)/bin:$PATH" LDFLAGS="-L$(brew --prefix tcl-tk)/lib" CPPFLAGS="-I$(brew --prefix tcl-tk)/include" PKG_CONFIG_PATH="$(brew --prefix tcl-tk)/lib/pkgconfig" CFLAGS="-I$(brew --prefix tcl-tk)/include" PYTHON_CONFIGURE_OPTS="--with-tcltk-includes='-I$(brew --prefix tcl-tk)/include' --with-tcltk-libs='-L$(brew --prefix tcl-tk)/lib -ltcl8.6 -ltk8.6'" pyenv install 3.8.6
```
