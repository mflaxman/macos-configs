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
  git clone https://github.com/tpope/vim-fugitive.git ~/.vim/pack/dist/start/vim-fugitive
```
Open vim (with `$ vim`) and then type `:GoInstallBinaries`.

Plan B for vim config if golang wasn't the focus:
https://github.com/amix/vimrc

## DisplayPort (HDMI) Audio Config
https://apple.stackexchange.com/questions/343902/how-to-control-sound-of-connected-external-monitor
(soundflower/soundflowerbed already isntalled in `brew.md`)
