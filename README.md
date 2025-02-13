## New Mac setup

https://www.nerdfonts.com/font-downloads
https://medium.com/@jeantimex/how-to-configure-iterm2-and-vim-like-a-pro-on-macos-e303d25d5b5c#

Install Brew: 

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# brew install --cask google-chrome iterm2 openjdk
brew install asdf ripgrep tldr fd git

asdf plugin add ruby
asdf install ruby 2.7.2

# load programming.json in iTerm2 profiles

mkdir ~/Development
cd ~/Development
git clone https://github.com/vysogot/dotfiles
cd dotfiles

cp .tool-versions .gemrc .bash_profile .gitconfig .zshrc .p10k.zsh ~/
. ~/.zshrc

```

Update for `asdf 10.2`, add this to `.zshrc`:

```
unset ASDF_DIR
source $(brew --prefix asdf)/libexec/asdf.sh
```
