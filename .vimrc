" David Wood's .vimrc Configuration
" 	dotfiles: https://github.com/davidtwco/dotfiles
" 	website: https://davidtw.co
" =================================
" The goal of this configuration is to enhance the default Vim configuration
" without remapping from the defaults too much.
"
" Fold Bindings (incase you've forgotten):
" ----------------------------------------
" za		toggle one level
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
	" Twig Syntax
	Plugin 'lumiliet/vim-twig'
	" Jinja/Nunjucks Syntax
	Plugin 'niftylettuce/vim-jinja'

call vundle#end()            " required
if has("autocmd")
	filetype plugin indent on    " required
endif
" }}}

" Colors {{{
" ======
syntax enable
set background=dark
colorscheme hybrid
" }}}

" Tabs & Spaces {{{
" =============
" In general, prefer using tabs for indentation and spaces for alignment. May
" change depending on filetype.
set tabstop=4					" Width of tab is 4.
set softtabstop=4 				" Width of a 'space tab' (pressing tab when using spaces) is 4.
set noexpandtab					" Use tabs rather than spaces.
set shiftwidth=4				" Indent by 4 when using '<', '>' operators.
set smarttab					" Insert spaces or tabs to get to next indent.
set autoindent					" Match identation of the previous line.

" Display the tab characters and end of line characters.
set list
set listchars=tab:▸\ ,eol:¬
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
" Disable the mouse.
set mouse=r
" }}}

" File Navigation {{{
" ===============
" Map %% to the current opened file's path.
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
" Map helpful commands for editing files in that directory. (leader defaults
" to \)
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
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

" Restore cursor position.
if has("autocmd")
	autocmd BufReadPost *
				\ if line("'\"") > 1 && line("'\"") <= line("$") |
				\   exe "normal! g`\"" |
				\ endif
endif
" }}}

" File Type Specific {{{
" ==================
if has("autocmd")
	" Find the filetype using ':set ft?'
	" Syntax of these languages is dependant on tabs/spaces.
	au FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
	au FileType python set ts=4 sw=4 expandtab smarttab sts=4 autoindent
	au FileType yaml set ts=2 sw=2 expandtab nosmarttab
endif
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

" Buffers {{{
" =======
" Vim should create hidden buffers more liberally.
" ie. it should not prompt when switching between open files (in buffers) when
" those files have changes.
set hidden
" }}}

" Organization {{{
" ============
set modelines=1			" Sets the expected modeline format.
" }}}

" vim:foldmethod=marker:foldlevel=0
