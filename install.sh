#!/bin/bash

# Makes the script output every step
# http://serverfault.com/questions/16204/how-to-make-bash-scripts-print-out-every-command-before-it-executes
set -x

echo "Performing installation of https://github.com/mathielo/vim ..."

# Fetching repository submodules
git submodule update --init

# Telling ~/.vimrc to actually fetch settings from repo's custom file
echo 'source ~/.vim/.vimrc' > ~/.vimrc



### OPTIONALS

# Adding custom user configs 
echo 'source ~/.vim/.bash_profile' > ~/.bash_profile
# Reloading bash configs
source ~/.bash_profile

# Setting git's core editor 
git config --global core.editor "vim"

