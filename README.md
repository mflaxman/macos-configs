# osx-configs

## Brew Package Manager
https://brew.sh/
(see `brew.md` for details)

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

## Configs

Copy over hidden files to home directory:
```bash
$ cp {gitconfig,inputrc,profile,,screenrc,vimrc} ~/{.gitconfig,.inputrc,.profile,.screenrc,.vimrc}
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

## Proton VPN Manual Setup (no app to install)
* Root CA: [`ProtonVPN_ike_root.der`](ProtonVPN_ike_root.der) (see [`download.md`](download.md))
* Instructions: https://protonvpn.com/support/macos-ikev2-vpn-setup/ 
* List of Servers: https://account.protonvpn.com/downloads 
* Credentials: https://account.protonvpn.com/account#openvpn 

## Bitcoin Core

Download latest Bitcoin Core from <https://bitcoin.org/en/download> into this local directory:
<https://bitcoin.org/bin/bitcoin-core-22.0/bitcoin-22.0-osx-signed.dmg>

Make sure version you download matches local `SHA256SUMS.asc` (see `download.md`).
```
$ shasum -a 256 --check --ignore-missing SHA256SUMS | grep OK
bitcoin-22.0-osx-signed.dmg: OK
```

Import all the release keys (FIXME: this is lousy because the keys to verify are coming from the file downloaded):
```
$ gpg --verify SHA256SUMS.asc 2>&1 | grep "using RSA key" | tr -s ' ' | cut -d ' ' -f5 | xargs gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys
```
TERRIBLE HACK: just google the shasuma it's using

You can verify this with the following (not needed):
```bash
$ gpg --list-keys
```

Confirm the signature
```bash
$ gpg --verify SHA256SUMS.asc
gpg: Signature made Sun 24 Nov 2019 03:14:42 AM CST
gpg:                using RSA key 90C8019E36C2E964
gpg: Good signature from "Wladimir J. van der Laan (Bitcoin Core binary release signing key) <laanwj@gmail.com>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: 01EA 5486 DE18 A882 D4C2  6845 90C8 019E 36C2 E964
```
(untrusted message is because I don't have any web of trust sigs that verify Wladimir's key)

Manually open the `.dmg` file to install.

## DisplayPort (HDMI) Audio Config
https://apple.stackexchange.com/questions/343902/how-to-control-sound-of-connected-external-monitor
(soundflower/soundflowerbed already isntalled in `brew.md`)
