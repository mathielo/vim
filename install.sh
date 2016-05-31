#!/bin/bash

echo "\n\n\nPerforming installation of https://github.com/mathielo/vim ..."

# Fetching repository submodules
git submodule update --init

# Telling ~/.vimrc to actually fetch settings from repo's custom file
echo 'source ~/.vim/.vimrc' > ~/.vimrc



### OPTIONALS

# Setting git's core editor 
git config --global core.editor "vim"

# Adding custom user configs 
echo 'source ~/.vim/.bash_profile' > ~/.bash_profile

echo "All done, new config ready to use!"
echo "Run 'cd ~ && . .bash_profile' to reload current terminal session with new config"
