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
With M1 (not x86):
```bash
$ brew reinstall ag aspell automake colordiff diff-pdf git-delta go htop ipython jq libffi libusb libsecp256k1 macvim openssl@3 pandoc pkg-config postgresql pyenv ruby rbenv sqlite tcl-tk tor tree vim --no-quarantine
```
Notes:
* ` --no-quarantine` may not be strictly needed on this one
* If you get a `macvim`/`vim` error message, just follow the steps to unlink `vim` and install `macvim` (more [here](https://github.com/macvim-dev/macvim/issues/1185))

With x86 (not M1). More on this [here](https://stackoverflow.com/questions/64963370/error-cannot-install-in-homebrew-on-arm-processor-in-intel-default-prefix-usr):
```bash
$ arch -x86_64 brew reinstall virtualbox --no-quarantine
```

### Casks
```bash
$ brew reinstall --cask atom balenaetcher brave-browser chromium firefox keepassxc mactex sparrow tor-browser transmission visual-studio-code vlc --no-quarantine
```
TODO: add back in `soundflower` & `soundflowerbed`

## Python - pyenv

Install python in `pyinstaller`-friendly way:
```bash
$ time env PYTHON_CONFIGURE_OPTS="--enable-framework" pyenv install 3.10.0
```
(This takes ~2m. Repeat replacing `3.10.0` with every version you want to install)

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
