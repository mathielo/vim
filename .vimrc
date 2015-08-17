" This must be first, because it changes other options as side effect
" Also, better safe than sorry: http://stackoverflow.com/a/5845583/2752041
set nocompatible

" Executing Pathogen
execute pathogen#infect()

" Disable Swap files (be sure to always save your work!)
set noswapfile

" Remapping : to ; so you can skip pressing <Shift> to enter command mode
nnoremap ; :

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

" Enabling indentation and plugins for specific files
filetype plugin indent on

" Expanding undo and history actions
set history=600
set undolevels=600

" Enables paste mode on insert (ignores formatting smarts)
set pastetoggle=<F2>

" <Plugin>NERDTree Keymaps
nmap <C-k><C-b> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" Setting color scheme and syntax highlight
" <http://nvie.com/posts/how-i-boosted-my-vim/#enable-syntax-highlighting>
if &t_Co > 2 || has("gui_running")
  syntax on
  if &t_Co >= 256
    " Remember to execute 'TERM=xterm-256color' in your shell's .rc
    " (~/.bashrc)
    colorscheme mustang
  end
endif

" Function to toggle between absolute and relative line numbers
" <http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement>
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

" Setting number and calling toggle upon loading. For Vim 7.4+ both work together
" so there is no need to swtich between each.
set number
call NumberToggle()

" Automatically toggles when entering/leaving insert mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Saves and loads current session on VimEnter and VimLeave
" Sessions are stored at ~/.vim/sessions (ignored by Git)
" http://stackoverflow.com/a/31978241/2752041
function! MakeSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:filename = b:sessiondir . '/session.vim'
  exe "mksession! " . b:filename
endfunction

function! LoadSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction
if(argc() == 0) 
  au VimEnter * nested :call LoadSession() 
endif
au VimLeave * :call MakeSession()

" No arrow keys allowed!!! (╯°□°）╯︵ ┻━┻)
" This is really good to enforce the use of HJKL keys for navigation.
" You may seriously consider disabling (commenting these lines) if you're just
" getting started with Vim. 
" Also, try <http://vim-adventures.com> to help you get used to Vim navigation.
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Allows you to save files that requires sudo permission after you foolishly opened it without sudo
cmap w!! w !sudo tee % >/dev/null
