###
### Zsh Config
###
### https://wiki.archlinux.org/index.php/Zsh
### https://www.smashingmagazine.com/2015/07/become-command-line-power-user-oh-my-zsh-z/
###
zstyle ':completion:*' completer _expand _complete _ignored _correct

autoload -Uz compinit
compinit

HISTFILE=~/.zsh-history
HISTSIZE=10000
SAVEHIST=3000
setopt appendhistory autocd extendedglob
unsetopt beep
bindkey -e

###
### Prezto Config
###
### https://github.com/sorin-ionescu/prezto
### https://wikimatze.de/better-zsh-with-prezto/
### http://mikebuss.com/2014/02/02/a-beautiful-productive-terminal-experience/
###

zstyle ':prezto:load' pmodule \
  'directory' \
  'utility' \
  'completion' \
  'git' \
  'prompt' \
  'syntax-highlighting' \
  'history-substring-search'

zstyle ':prezto:module:prompt' theme 'mathielo'

# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Some overrides after Prezto has been loaded
unsetopt CORRECT # Disables annoying correction suggestions >:(
unalias rm gs # Disables annoying aliases
unalias d

###
### 🌈
###

# Mustang theme is only loaded if the terminal emulator Vim runs in supports at least 256 colors (or if you use the GUI version of Vim).
# Hint: If you’re using a terminal emulator that can show 256 colors, try setting TERM=xterm-256color in your terminal configuration or in your shell’s .rc file.
# from <http://nvie.com/posts/how-i-boosted-my-vim/#enable-syntax-highlighting>
TERM=xterm-256color

# LS COLORS
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

###
### Custom aliases
###

# Directories
alias ..='cd ..'
alias du='du -h'
alias df='df -h'

# Git
alias gst='git status'
alias gpom='git pull origin main'
alias gd='git diff'
alias gds='git diff --staged'
alias gck='git checkout'
alias gi='git add -i'
alias gs='git show'
alias ga='git add'
alias ga.='ga .'
alias gf='git fetch -p'
alias gum='gck main && gpom && gf' # Super lazy command: Git Update main (GUM) - Checkout into main, update from origin, fetch -p
alias gus='gck staging && g pull origin staging && gf' # Super lazy command: Git Update staging (GUS) - Checkout into staging, update from origin, fetch -p
alias glss='git log --show-signature'
# Use with CAUTION! It deletes all local branchs except main
alias gdeleteallbutmain='gbl && sleep 3 && git branch | grep -v "main" | xargs git branch -D'
# Deletes ALL untracked files in the repo, except for .idea folder
alias gclean='g clean -Xfd -e \!.idea'

# Docker
alias d='docker'
alias dc='docker-compose'
# Docker stats - formatted with the most common essential colulmns (so it fits a smaller terminal pane)
# https://docs.docker.com/engine/reference/commandline/stats/#formatting
alias dstats='docker stats --format "table {{.Container}}\t{{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}"'

###
### Custom functions
###

# Display all to-dos recursively in the current folder/project
# @see https://mattprice.me/2014/printing-todo-comments-with-ack/
# @see https://beyondgrep.com/install/
todo() {
  ack -i \
    -o \
    --group \
    --color \
    --sort-files "\b(TODO|FIX(ME)?|OPTIMIZE|BUG)(\(\w+\))?: (.*)" \
    --ignore-dir={.git,node_modules,vendor,Pods} \
    | perl -pe "s/:/\t/" \
    | perl -pe "s/\t(\w+)(\(\w+\))?:(.*)/\t\$1:\$3 \$2/"
}

###
### Session startup
###

# Load local .zshrc file if present
if [[ -s "${HOME}/.zshrc" ]]; then
  source "${HOME}/.zshrc"
fi

