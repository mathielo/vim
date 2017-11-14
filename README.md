# Vim / Zsh
My own personal repository for terminal and vim config.

Some [references](./REFERENCES.md) were added to keep track of good articles about vim tweaks and usage.

## Install Zsh

**Mac OS:**

    brew install zsh zsh-completion

:warning: When installing Zsh via homebrew it's possible to get a `chsh: /usr/local/bin/zsh: non-standard shell` when trying to set it as the default shell. If that happens you need to edit `/etc/shells` and add the full path for the homebew Zsh (as shwon in the error message) at the end of the file.

**Debian/Ubuntu:**

    apt-get install zsh

## Automated Installation (Unix)

Copy & paste the following line on the terminal and hit enter:

    git clone https://github.com/mathielo/vim.git ~/.vim && cd ~/.vim && ./install.sh

This will clone this repository creating a `.vim` (hidden) folder under your user's home folder. Update the above line to replace the destination folder if desired. You might be prompted the sudoer password as the script sets the default shell to Zsh.

At the end of the installation close the terminal window and open a fresh new one. 

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
