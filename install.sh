#!/bin/bash

echo "Performing installation of https://github.com/mathielo/vim ..."

# Fetching repository submodules
git submodule update --init --recursive

# Telling ~/.vimrc to actually fetch settings from repo's custom file
echo 'source ~/.vim/.vimrc' > ~/.vimrc

### OPTIONALS

# Setting git's core editor
git config --global core.editor "vim"
git config --global commit.gpgsign true

# List commits involved in a merge. https://stackoverflow.com/a/23508223/2752041
git config --global alias.merge-log '!f() { git log --stat "$1^..$1"; }; f'

# List commits of a merge, excluding the merge commit, in reverse order.
# Usage: git merge-log-hashes CoMmItHaSh | xargs git cherry-pick
git config --global alias.merge-log-hashes '!f() { git log --pretty=format:"%h" "$1^..$1" | grep -v $1 | tac; }; f'

# Set Zsh DOTDIR
echo 'ZDOTDIR=$HOME/.vim/.zsh' > ~/.zshenv

# Copy custom prompt theme into Prezto's modules folder
cp ~/.vim/.zsh/prompt_mathielo_setup ~/.vim/.zsh/.zprezto/modules/prompt/functions/

# Change default shell to Zsh (requrires sudoer password)
chsh -s "$(which zsh)"

echo "All done! You should close this terminal session and a start a fresh one :)"
