## New Mac setup

https://www.nerdfonts.com/font-downloads
https://medium.com/@jeantimex/how-to-configure-iterm2-and-vim-like-a-pro-on-macos-e303d25d5b5c#

Install Vim with plugins:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install --cask google-chrome iterm2 openjdk
brew install asdf ripgrep fzf tldr fd postgres git

asdf plugin add ruby
asdf install ruby 2.7.2

# load programming.json in iTerm2 profiles

mkdir ~/Development
cd ~/Development
git clone https://github.com/vysogot/dotfiles
cd dotfiles

cp .gemrc .bash_profile .gitconfig .zshrc .p10k.zsh ~/
. ~/.zshrc

mkdir -p ~/.vim/bundle
mkdir ~/.vim/autoload

cp autoload/* ~/.vim/autoload

cd ~/.vim/bundle
git clone https://github.com/junegunn/fzf
git clone https://github.com/junegunn/fzf.vim
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/jeetsukumaran/vim-indentwise
git clone https://github.com/tpope/vim-rails
```

Update for `asdf 10.2`, add this to `.zshrc`:

```
unset ASDF_DIR
source $(brew --prefix asdf)/libexec/asdf.sh
```
