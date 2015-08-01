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
set softtabstop=2

" Ignores case if search is all lowercase, case-sensitive otherwise
set smartcase

" <Plugin>NERDTree Keymaps
nmap <C-kb> :NERDTreeToggle<CR>
