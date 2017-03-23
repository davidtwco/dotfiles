" David Wood's .vimrc Configuration
" 	dotfiles: https://github.com/davidtwco/dotfiles
" 	website: https://davidtw.co
" =================================
" The goal of this configuration is to enhance the default
" Vim configuration without remapping from the defaults too
" heavily.
"
" Fold Bindings (incase you've forgotten):
" ----------------------------------------
" za 		toggle one level
" zc		close one level
" zo		open one level
" zA		toggle all levels
" zC		close all levels
" zO		open all levels
" zr		open one level everywhere
" zR		open all levels everywhere
" zm		close one level everywhere
" zM		close all levels everywhere

" Plugins (Vundle) {{{
" ================
set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	" Let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
	" Easy navigation between vim splits and tmux panes.
	Plugin 'christoomey/vim-tmux-navigator'
	" Comments
	Plugin 'tpope/vim-commentary'
	" Git Wrapper
	Plugin 'tpope/vim-fugitive'
	" Surroundings ("", '', {}, etc.)
	Plugin 'tpope/vim-surround'
	" UNIX Helpers
	Plugin 'tpope/vim-eunuch'
	" Session saving (works with tmux-resurrect)
	Plugin 'tpope/vim-obsession'
	" Enhanced '%'
	Plugin 'geoffharcourt/vim-matchit'
	" Dockerfile Syntax
	Plugin 'ekalinin/Dockerfile.vim'
	" Completion (complex install, see docs)
	Plugin 'Valloric/YouCompleteMe'
	" Markdown Preview (requires npm package)
	Plugin 'shime/vim-livedown'
	" Color Scheme
	Plugin 'w0ng/vim-hybrid'

call vundle#end()            " required
filetype plugin indent on    " required
" }}}

" Colors {{{
" ======
syntax enable
set background=dark
colorscheme hybrid
" }}}

" Tabs & Spaces {{{
" =============
" In general, prefer using tabs for indentation and spaces for alignment.
" May change depending on filetype.
set tabstop=4					" Width of tab is 4.
set softtabstop=0 noexpandtab	" Number of columns for a tab
set shiftwidth=4				" Indents have width of four.
set smarttab					" Insert spaces or tabs to get to next indent.
" }}}

" Undo/Backups {{{
" ============
" Change undo and backup directories to keep things clean.
set backupdir=~/.vim/backup
set undodir=~/.vim/undo
" }}}

" Tab Completion {{{
" ==============
" Turn on wildmenu for file name tab completion.
set wildmode=longest,list,full
set wildmenu
" }}}

" UI & Visual Cues {{{
" =========
set ruler			" Show ruler.
set showcmd			" Show incomplete commands.
set nocursorline	" Highlight the current line.
set lazyredraw		" Lazy redraw.
set number			" Line Numbers
set report=0		" Display messages for changes (ie. yank, delete, etc.)
set showmatch		" Show matching brackets.
set mat=5			" Matching bracket duration.
set visualbell		" Shut up, Vim.
set laststatus=1	" Always show the status line.
" }}}

" Searching {{{
" =========
set hlsearch		" Highlight matches.
set incsearch		" Highlight matches as we type.
set ignorecase		" Ignore case when searching.
set smartcase		" Don't ignore case when different cases searched for.
" }}}

" Movement {{{
" ========
" Move vertically visually, ie. on wrapped lines.
nnoremap j gj
nnoremap k gk
" }}}

" Mouse {{{
" ==============
" Allows scrolling in Vim, need to press SHIFT + RClick to paste.
set mouse=a
" }}}

" Folding {{{
" =======
set foldenable				" Enable folding.
set foldlevelstart=10		" Open 10 levels of folds by default.
set foldnestmax=10			" 10 nested folds max.
set foldmethod=indent		" Fold based on indentation (for Python)
" }}}

" Misc {{{
" ====
set history=1000	" Increase history.
" }}}

" File Type Specific {{{
" ==================
au FileType yaml set tabstop=2 shiftwidth=2 expandtab nosmarttab
" }}}

" Functions {{{
" =========
" Strip trailing whitespace on saving a file.
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Toggle between absolute line numbers and relative line numbers.
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
" }}}

" Organization {{{
" ============
set modelines=1		" Sets the expected modeline format.
" }}}

" vim:foldmethod=marker:foldlevel=0
