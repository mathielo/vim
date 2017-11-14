# Vim / Zsh
My own personal repository for terminal and vim config.

Some [references](./REFERENCES.md) were added to keep track of good articles about vim tweaks and usage.

## Install Zsh

Mac OS:

    brew install zsh zsh-completion

Debian/Ubuntu:

    apt-get install zsh

## Automated Installation (Unix)

Copy & paste the following line on the terminal and hit enter:

    git clone git@github.com:mathielo/vim.git ~/.vim && cd ~/.vim && ./install.sh

This will clone this repository creating a `.vim` (hidden) folder under your user's home folder. Update the above line to replace the destination folder if desired.

Please do note the message at the end of installation:

> Run 'cd ~ && source ~/.vim/.zsh/.zshrc' to reload current terminal session with new config

You need to manually reload your current terminal session for changes to take effect.

**NOTE:** Running the automated install will also setup the [optional](#optionals) configurations.

## Manual Installation (Unix)

Clone this repo into `~/.vim`:

    git clone https://github.com/mathielo/vim.git ~/.vim

Make sure to load all submodules:

    cd ~/.vim && git submodule update --init --recursive

Set `~/.vimrc` to load this repository:

    echo 'source ~/.vim/.vimrc' > ~/.vimrc

## Optionals

Setup Zsh DOTDIR to load all predefined Zsh config:

    echo 'ZDOTDIR=$HOME/.vim/.zsh' > ~/.zshenv

Copy custom prompt theme into Prezto's modules folder

    cp .zsh/prompt_mathielo_setup .zsh/.zprezto/modules/prompt/functions/

Change default shell to Zsh (requrires sudoer password)

    chsh -s $(which zsh)

**Do not forget** to set Git's default editor to Vim: `git config --global core.editor "vim"`

--
All set, have fun! :feelsgood:
