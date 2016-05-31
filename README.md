# Vim
My own personal repository for vim config, plugins and such. This repository will improve over time.

Some [references](./REFERENCES.md) were added to keep track of good articles about vim tweaks and usage.

## Automated Installation (Unix)

Copy & paste the following line on the terminal and hit enter:

    git clone https://github.com/mathielo/vim.git ~/.vim && cd ~/.vim && ./install.sh

This will clone this repository creating a `.vim` (hidden) folder under your user's home folder. Update the above line to replace the destination folder if desired.

Please do note the message at the end of installation:

> Run 'cd ~ && . .bash_profile' to reload current terminal session with new config

You need to manually reload your current terminal session for changes to take effect.

**NOTE:** Running the automated install will also setup the [optional](#optionals) configurations.

## Manual Installation (Unix)

Clone this repo into `~/.vim`:

    git clone https://github.com/mathielo/vim.git ~/.vim

Make sure to load all submodules:

    cd ~/.vim && git submodule update --init

Set `~/.vimrc` to load this repository:

    echo 'source ~/.vim/.vimrc' > ~/.vimrc

## Optionals

Edit your `~/.bash_profile` (or `~/.bashrc` if you don't have it) and add the following line:

    source ~/.vim/.bash_profile

This will load terminal specific commands, such as color config and helpful aliases.

**Do not forget** to set Git's default editor to Vim: `git config --global core.editor "vim"`

--
All set, have fun! :feelsgood:
