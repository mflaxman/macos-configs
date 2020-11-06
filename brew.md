# TODO: install brew (safely) instructions

Regular
```bash
$ brew install ag aspell automake colordiff git-delta go htop ipython jq macvim postgresql ruby sqlite tcl-tk tree vim
```

Casks:
```bash
$ brew cask install atom freesmug-chromium keepassx openssl@1.1 postgres soundflower soundflowerbed transmission tunnelblick virtualbox visual-studio-code vlc
$ brew tap heroku/brew && brew install heroku
```
TODO: migrate to keepassxc

You may need to set the `--enable-framework` flag for your `python3` to make `pyinstaller` happy):
```bash
$ time env PYTHON_CONFIGURE_OPTS="--enable-framework" brew install python3
```
(Takes ~4 minutes)

Test like this
```python
$ python3
>>> import tkinter
[see no DEPRECATION WARNING]
```
