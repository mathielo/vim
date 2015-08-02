" This must be first, because it changes other options as side effect
" Also, better safe than sorry: http://stackoverflow.com/a/5845583/2752041
set nocompatible

" Executing Pathogen
execute pathogen#infect()

" Disable Swap files (be sure to always save your work!)
set noswapfile

" Set line numbers
set nu

" Avoiding line wrapping
set nowrap

" Indentation
set expandtab
set shiftwidth=2
set shiftround
set softtabstop=2
set autoindent

" Ignores case if search is all lowercase, case-sensitive otherwise
set smartcase

" <Plugin>NERDTree Keymaps
nmap <C-k><C-b> :NERDTreeToggle<CR>

" Expanding undo and history actions
set history=600
set undolevels=600
