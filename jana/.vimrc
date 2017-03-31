set nocompatible
set clipboard=unnamedplus
set wildmenu
set esckeys
set backspace=indent,eol,start
set ttyfast
set gdefault
set encoding=utf-8 nobomb
let mapleader=","
set binary
set noeol
set backupdir=~/.vim/backups
if exists("&undodir")
  set undodir=~/.vim/undo
endif
set viminfo+=! " make sure vim history works
map <C-J> <C-W>j<C-W>_ " open and maximize the split below
map <C-K> <C-W>k<C-W>_ " open and maximize the split above
set wmh=0 " reduces splits to a single line 
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
syntax on
set cursorline
set tabstop=2
set number
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
set hlsearch
set incsearch
set laststatus=2
set modeline
set modelines=4
set mouse=a
set noerrorbells
set nostartofline
set ruler
set shortmess=atI
set showmode
set title
set showcmd
" Start scrolling three lines before the horizontal window border
"set scrolloff=3
set ai

" Strip trailing whitespace (,ss)
function! StripWhitespace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif
