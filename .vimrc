
set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" Do not keep a backup file, use versions instead
else
  set backup		" Keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" Keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd matchit
endif

" Tab Settings
set tabstop=4					" Width of tab is 4.
set softtabstop=0 noexpandtab	" Number of columns for a tab
set shiftwidth=4				" Indents have width of four.
set smarttab					" Insert spaces or tabs to get to next indent.

" Change undo and backup directories to keep things clean.
set backupdir=~/.vim/backup
set undodir=~/.vim/undo

" Turn on wildmenu.
set wildmode=longest,list,full
set wildmenu

" UI Settings & Visual Cues
set ruler			" Show ruler.
set noshowcmd		" No incomplete commands.
set lazyredraw
set number			" Line Numbers
set report=0		" Display messages for changes (ie. yank, delete, etc.)
set showmatch		" Show matching brackets.
set mat=5			" Matching bracket duration.
set visualbell		" Shut up, Vim.
set laststatus=1	" Always show the status line.

" File Type Specific
au FileType yaml set tabstop=2 shiftwidth=2 expandtab nosmarttab

" Strip whitespace on save.
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Mouse settings
set mouse=a			" Allows scrolling but will require pressing shift while pasting.
