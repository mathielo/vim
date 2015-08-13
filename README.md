# Vim
My own personal repository for vim config, plugins and such. This repository will improve over time.

Some [references](./REFERENCES.md) were added to keep track of good articles about vim tweaks and usage.

## Installation (Unix)

Clone this repo into `~/.vim`:

    git clone https://github.com/mathielo/vim.git ~/.vim

Make sure to load all submodules:

    cd ~/.vim && git submodule update --init

Set `~/.vimrc` to load this repository:

    echo 'source ~/.vim/.vimrc' > ~/.vimrc

## Optional

Edit your `~/.bash_profile` (or `~/.bashrc` if you don't have it) and add the following line:

    source ~/.vim/.bash_profile

This will load terminal specific commands, such as color config and helpful aliases.

--
All set, have fun! :feelsgood:
