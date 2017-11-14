#!/bin/bash

echo "Performing installation of https://github.com/mathielo/vim ..."

# Fetching repository submodules
git submodule update --init --recursive

# Telling ~/.vimrc to actually fetch settings from repo's custom file
echo 'source ~/.vim/.vimrc' > ~/.vimrc

### OPTIONALS

# Setting git's core editor
git config --global core.editor "vim"

# Set Zsh DOTDIR
echo 'ZDOTDIR=$HOME/.vim/.zsh' > ~/.zshenv

# Copy custom prompt theme into Prezto's modules folder
cp ~/.vim/.zsh/prompt_mathielo_setup ~/.vim/.zsh/.zprezto/modules/prompt/functions/

# Change default shell to Zsh (requrires sudoer password)
chsh -s $(which zsh)

echo "All done! You should close this terminal session and a start a fresh one :)"
