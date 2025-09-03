# Install Brew


## Brew Itself
```
$ ./bin/bash brew_install.sh
```

## Brew Modules

For first-time installs, `$ brew install` is the standard.
`$ brew reinstall` may help debug problem installations.

### Taps
Taps:
```bash
$ brew tap cuber/homebrew-libsecp256k1
```

### Regular
```bash
$ brew reinstall ag aspell automake chromium colordiff csvkit diff-pdf git-delta go htop ipython jq libffi libusb libsecp256k1 macvim maestral node ollama openssl@3 pandoc pkg-config postgresql pyenv qrencode ruby rbenv sqlite tcl-tk tor tree vim --no-quarantine
```
Notes:
* ` --no-quarantine` may not be strictly needed on this one
* If you get a `macvim`/`vim` error message, just follow the steps to unlink `vim` and install `macvim` (more [here](https://github.com/macvim-dev/macvim/issues/1185))

### Casks
```bash
$ brew reinstall --cask balenaetcher brave-browser firefox keepassxc libpq mactex raspberry-pi-imager sparrow tor-browser transmission visual-studio-code vlc vscodium --no-quarantine
```
TODO: add back in `soundflower` & `soundflowerbed`

### Ollama
```bash
$ brew pull llama3.2
$ brew services start ollama
$ ollama run llama3.2
>>> hello world
Hello! It's nice to meet you. Is there something I can help you with or would you like to chat?
```

## Python - pyenv

Install python in `pyinstaller`-friendly way:
```bash
$ time env PYTHON_CONFIGURE_OPTS="--enable-framework" pyenv install 3.10.6
```
(This takes ~2m as of 2022-08. Repeat replacing `3.10.6` with every version you want to install)

See versions of python you have installed
```bash
$ pyenv versions
```

List all versions available to install:
```bash
$ pyenv install --list
```

Switch python version:
```
$ pyenv global 2.7.15
$ python -V
Python 2.7.15
```

## Ruby

### rbenv

The `.profile` and `brew install` above should have setup `rbenv init`, so next up let's just confirm everything is working as designed:
```
$ ./rbenv_doctor.sh
```

On a clean setup it's possible there's no version of ruby installed, so you may need to do this:
```
$ time rbenv install 3.0.3
```
(Takes ~4 minutes as of 2021-12, much of which is `openssl` install related)

List all versions available to install:
```bash
$ rbenv install --list
```

Switch ruby version:
```bash
$ rbenv global 2.6.9
$ ruby --version
ruby 2.6.9p207 (2021-11-24 revision 67954) [arm64-darwin21]
```

### gems

This is used for jekyll (static websites):
```
$ gem install rdoc --pre
$ gem install bundler jekyll
```
Notes:
* `rdoc` was causing error messages with installing `jekyll`
* You may need to pass a `--user-install` flag to the second-line

More [here](https://jekyllrb.com/docs/installation/macos/)
