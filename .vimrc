" David Wood's .vimrc Configuration
" 	dotfiles: https://github.com/davidtwco/dotfiles
" 	website: https://davidtw.co
" =================================
" The goal of this configuration is to enhance the default Vim configuration
" without remapping from the defaults too much.

" Fold Bindings (incase you've forgotten):
" ========================================
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

" Plugins
" =======

" Vundle {{{
" ================
set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	" Let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'

	" Integrations {{{
	" ------------
		" Easy navigation between vim splits and tmux panes.
		Plugin 'christoomey/vim-tmux-navigator'
		" Functions that interact with tmux.
		Plugin 'tpope/vim-tbone'
	" }}}

	" Operators/Motions/etc. {{{
	" ---------------------
		" Comments.
		Plugin 'tpope/vim-commentary'
		" Git wrapper.
		Plugin 'tpope/vim-fugitive'
		" Surroundings ("", '', {}, etc.).
		Plugin 'tpope/vim-surround'
		" UNIX helpers.
		Plugin 'tpope/vim-eunuch'
		" Session saving (works with tmux-resurrect).
		Plugin 'tpope/vim-obsession'
		" Handy bracket matchings.
		Plugin 'tpope/vim-unimpaired'
		" Word variation helper.
		Plugin 'tpope/vim-abolish'
		" Auto-adds 'end' where appropriate.
		Plugin 'tpope/vim-endwise'
		" Improvements to netrw.
		Plugin 'tpope/vim-vinegar'
		" Improve '.' (repeat) for plugin maps.
		Plugin 'tpope/vim-repeat'
		" Get character codes.
		Plugin 'tpope/vim-characterize'

		" Fuzzy file search.
		Plugin 'ctrlpvim/ctrlp.vim'
		" Enhanced '%' functionality.
		Plugin 'geoffharcourt/vim-matchit'
		" Completion (complex install, see docs).
		Plugin 'Valloric/YouCompleteMe'
	" }}}

	" Functions {{{
	" --------
		" Line up text.
		Plugin 'godlygeek/tabular'
		" Markdown Preview (requires npm package - livedown).
		Plugin 'shime/vim-livedown'
	" }}}

	" Colour Schemes {{{
	" --------------
		Plugin 'w0ng/vim-hybrid'
	" }}}

	" Syntax {{{
	" ------
		" Dockerfile Syntax.
		Plugin 'ekalinin/Dockerfile.vim'
		" Twig Syntax.
		Plugin 'lumiliet/vim-twig'
		" Jinja/Nunjucks Syntax.
		Plugin 'niftylettuce/vim-jinja'
	" }}}

call vundle#end()            " required
if has("autocmd")
	filetype plugin indent on    " required
endif
" }}}

" Configuration
" =============

" Buffers {{{
" =======
" Vim should create hidden buffers more liberally.
" ie. it should not prompt when switching between open files (in buffers) when
" those files have changes.
set hidden
" }}}

" CtrlP {{{
" =====
" Map CTRLP to use CTRL+P.
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Ignore files in .gitignore.
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" }}}

" Colors {{{
" ======
syntax enable
set background=dark
colorscheme hybrid
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

" Folding {{{
" =======
set foldenable				" Enable folding.
set foldlevelstart=10		" Open 10 levels of folds by default.
set foldnestmax=10			" 10 nested folds max.
set foldmethod=indent		" Fold based on indentation (for Python)
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

" Misc {{{
" ====
set history=1000	" Increase history.

" If we edit a file named '.vimrc', reload our .vimrc.
if has("autocmd")
	" Adding this to a group ensures that any previous reload commands queued
	" are removed.
	augroup FileTypeVim
		au!
		au! BufWritePost .vimrc source $MYVIMRC
		" Following line ensures that modeline is loaded.
		au! BufWritePost .vimrc set modeline | doautocmd BufRead
	augroup END
endif
" Map <leader>v to edit the .vimrc file in a new tab.
nmap <leader>v :tabedit $MYVIMRC<CR>

" Restore cursor position.
if has("autocmd")
	autocmd BufReadPost *
				\ if line("'\"") > 1 && line("'\"") <= line("$") |
				\   exe "normal! g`\"" |
				\ endif
endif
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

" Organization {{{
" ============
set modelines=1			" Sets the expected modeline format.
" }}}

" Searching {{{
" =========
set hlsearch		" Highlight matches.
set incsearch		" Highlight matches as we type.
set ignorecase		" Ignore case when searching.
set smartcase		" Don't ignore case when different cases searched for.
" }}}

" Tab Completion {{{
" ==============
" Turn on wildmenu for file name tab completion.
set wildmode=longest,list,full
set wildmenu
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

" Undo/Backups {{{
" ============
" Change undo and backup directories to keep things clean.
set backupdir=~/.vim/backup
set undodir=~/.vim/undo
" }}}

" vim:foldmethod=marker:foldlevel=0
