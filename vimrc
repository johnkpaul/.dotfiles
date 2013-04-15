call pathogen#infect() 

set wildignore=*/gen/*,*/node_modules/*
set background=light
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set expandtab
set smartcase
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
colorscheme darkblue
set syntax=automatic
set backspace=indent,eol,start " make backspace a more flexible
set backupdir=~/.vim/backup " where to put backup files
set directory=~/.vim/tmp

set incsearch " BUT do highlight as you type you
               " search phrase
set laststatus=2 " always show the status line
if has("mac")
  silent! set nomacatsui
else
  set lazyredraw
end
set linespace=2 " don't insert any extra pixel lines betweens rows
set list " show tabs and trailing spaces
set listchars=tab:>- " show tabs
set scrolloff=3 " Keep 4 lines (top/bottom) for scope
set ruler
set splitbelow
set splitright

set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%{exists('*rails#statusline')?rails#statusline():''}%{exists('*fugitive#statusline')?fugitive#statusline():''}%#ErrorMsg#%{exists('*SyntasticStatuslineFlag')?SyntasticStatuslineFlag():''}%*%=%-16(\ %l,%c-%v\ %)%P

set tags+=../tags,../../tags,../../../tags,../../../../tags,tmp/tags
set visualbell
set nu " line numbers
set grepprg=ack " FTW


" Maps
let mapleader = ","

nnoremap <silent> <leader>n :NERDTreeToggle<CR>
inoremap <silent> <leader>n :NERDTreeToggle<CR>

" plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
autocmd BufReadPost fugitive://* set bufhidden=delete

