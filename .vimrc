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

" Tab indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" <Plugin>NERDTree Keymaps
nmap <C-kb> :NERDTreeToggle<CR>
