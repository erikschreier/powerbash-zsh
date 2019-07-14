# powerbash-zsh

A ZSH theme to match bash prompt with some aditional features.

<a href="https://i.imgur.com/hgC920Y.png">
  <img src="https://imgur.com/hgC920Yl.png" />
</a>

## How to install

### Manually

Just clone the repo to your homefolder and move included powerbash.zsh-theme to your ~/.oh-my-zsh/custom/themes/ folder.

    $ git clone https://github.com/erikschreier/powerbash-zsh
    $ cd powerbash-zsh
    $ mv powerbash.zsh-theme ~/.oh-my-zsh/custom/themes/
    $ cd .. && rm -rf powerbash-zsh

### [Zgen](https://github.com/tarjoilija/zgen)

Add `zgen load erikschreier/powrbash-zsh` to your .zshrc file in the same function you're doing your other `zgen load` calls in. Zgen will automatically clone the repositories for you when you do a `zgen save`.
