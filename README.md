# osx-configs

## Manual installation

TODO: instructions for each

Always `$ curl > filename` and inspect the contents before piping to bash!

## Brew Package Manager
https://brew.sh/
(see `brew.md` for details)

## Firefox (chrome not open source)
https://www.mozilla.org/en-US/firefox

## VIM config
https://tpaschalis.github.io/vim-go-setup/
```bash
$ git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go && \
  git clone https://github.com/scrooloose/nerdtree.git ~/.vim/pack/dist/start/nerdtree && \
  git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline && \
  git clone https://github.com/tpope/vim-fugitive.git ~/.vim/pack/dist/start/vim-fugitive && \
  git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/dist/start/ctrlpvim
```
Open vim (with `$ vim`) and then type:
```
:GoInstallBinaries`
:helptags ~/.vim/pack/dist/start/ctrlpvim
```


Plan B for vim config if golang wasn't the focus:
https://github.com/amix/vimrc

## secp256k1 Instructions
(This is for bitcoin stuff)

```bash
$ cd ~/workspace && git clone https://github.com/bitcoin-core/secp256k1 && cd secp256k1
$ ./autogen.sh && ./configure --enable-module-recovery && make && make check && sudo sudo make install
```



## SSH Key Instructions
High level below, if it doesn't work or you want more info see [here](https://medium.com/risan/upgrade-your-ssh-key-to-ed25519-c6e8d60d3c54) for details.

Generate key. Choose a long passworth that we'll later add to your ssh agent:
```bash
$ ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519_20200612 -C "ssh_key_ed25519_20200612@michaelflaxman.com"
```
(date is optional but nice, replace with today's date if following this)

Update `IdentityFile` in `config` so that it matches the key you just generated. Then copy over the config file:
```bash
$ cp config ~/.ssh/config
```

Add key to agent (change filename accordingly):
```bash
$ ssh-add ~/.ssh/id_ed25519_20200612

```

## DisplayPort (HDMI) Audio Config
https://apple.stackexchange.com/questions/343902/how-to-control-sound-of-connected-external-monitor
(soundflower/soundflowerbed already isntalled in `brew.md`)
