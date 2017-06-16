" David Wood's .vimrc Configuration
" 	dotfiles: https://github.com/davidtwco/dotfiles
" 	website: https://davidtw.co
" =================================
"
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

set nocompatible              " be iMproved, required

" Plugins
" =======

" vim-plug {{{
" ================
call plug#begin('~/.vim/plugged')

	" Colour Schemes {{{
	" --------------
		Plug 'w0ng/vim-hybrid'
	" }}}

	" Autocomplete {{{
	" ------------
		Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
	" }}}

	" Commenting {{{
	" ----------
		" Comments.
		Plug 'tpope/vim-commentary'
	" }}}

	" File Browsing/Search {{{
	" --------
		" Improvements to netrw.
		Plug 'tpope/vim-vinegar'
		" Fuzzy file search.
		Plug 'ctrlpvim/ctrlp.vim'
	" }}}

	" Git Integration {{{
	" ---
		" Show Git changes.
		Plug 'mhinz/vim-signify'
		" Git wrapper.
		Plug 'tpope/vim-fugitive'
	" }}}

	" Indentation {{{
	" -----------
		" Apply indentation from .editorconfig files.
		Plug 'editorconfig/editorconfig-vim'
	" }}}

	" Linting {{{
	" -------
		Plug 'w0rp/ale'
	" }}}

	" Markdown Integration {{{
	" --------------------
		" Markdown Preview (requires npm package - livedown).
		Plug 'shime/vim-livedown', { 'for': 'markdown', 'on': 'LivedownPreview' }
		" Distraction-free Writing.
		Plug 'junegunn/goyo.vim', { 'for': 'markdown', 'on': 'Goyo' }
		" Folding
		Plug 'nelstrom/vim-markdown-folding', { 'for': 'markdown' }
	" }}}

	" Misc {{{
	" ---------------------
		" Word variation helper.
		Plug 'tpope/vim-abolish'
		" Improve '.' (repeat) for plugin maps.
		Plug 'tpope/vim-repeat'
		" Get character codes.
		Plug 'tpope/vim-characterize'
	" }}}

	" OS Integration {{{
	" --------------
		if has("unix")
			Plug 'tpope/vim-eunuch'
		endif
	" }}}

	" Python Integration {{{
	" ------
		" Works with Python virtual environments.
		Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
	" }}}

	" Tabbing {{{
	" -------
		" Line up text.
		Plug 'godlygeek/tabular', { 'on': ['Tabularize', 'Tab', 'AddTabularPattern', 'AddTabularPipeline'] }
	" }}}

	" tmux Integration {{{
	" ------------
		" Easy navigation between vim splits and tmux panes.
		Plug 'christoomey/vim-tmux-navigator'
		" Functions that interact with tmux.
		Plug 'tpope/vim-tbone'
		" Generate statuslines for tmux.
		Plug 'edkolev/tmuxline.vim'
	" }}}

	" Searching {{{
	" ---------
		Plug 'mileszs/ack.vim', { 'on': 'Ack' }
	" }}}

	" Session Saving {{{
	" --------------
		Plug 'tpope/vim-obsession'
	" }}}

	" Statusline {{{
	" ----------
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
	" }}}

	" Surroundings {{{
	" ----
		" Enhanced '%' functionality.
		Plug 'geoffharcourt/vim-matchit'
		" Handy bracket matchings.
		Plug 'tpope/vim-unimpaired'
		" Surroundings ("", '', {}, etc.).
		Plug 'tpope/vim-surround'
		" Auto-adds 'end' where appropriate.
		Plug 'tpope/vim-endwise'
	" }}}

	" Syntax {{{
	" ------
		" Dockerfile Syntax.
		Plug 'ekalinin/Dockerfile.vim'
		" Ansible
		Plug 'pearofducks/ansible-vim'
		" Puppet
		Plug 'rodjek/vim-puppet'
		" Vagrant
		Plug 'hashivim/vim-vagrant'

		" Twig Syntax.
		Plug 'lumiliet/vim-twig'
		" Jinja/Nunjucks Syntax.
		Plug 'niftylettuce/vim-jinja'

		" Rust
		Plug 'rust-lang/rust.vim'

		" tmux.conf
		Plug 'tmux-plugins/vim-tmux'
		" nginx.conf
		Plug 'chr4/nginx.vim'

		" JavaScript ES2015+
		Plug 'othree/yajs.vim'
		Plug 'othree/es.next.syntax.vim'
	" }}}

	" Undo {{{
	" --------
		" Visualize the undo tree.
		Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
	" }}}

call plug#end()
" }}}

" Configuration
" =============

" Ack {{{
" ===
" Use the silver searcher if available.
if executable('ag')
	let g:ackprg = 'ag --vimgrep'
endif
" }}}

" Airline {{{
" =======
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 0
" }}}

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
" Open files instead of switching to them.
let g:ctrlp_switch_buffer = 'et'
" }}}

" Colors {{{
" ======
syntax enable
set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid
" }}}

" Commenting {{{
" ==========
" Delete comment character when joining commented lines
if v:version > 703 || v:version == 703 && has("patch541")
	set formatoptions+=j
endif
" }}}

" Deletion {{{
" ========
" We can delete backwards over anything.
set backspace=indent,eol,start
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
	au FileType python setlocal ts=4 sts=4 sw=4 expandtab smarttab autoindent
	au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab nosmarttab
	au FileType puppet setlocal ts=2 sts=2 sw=2 expandtab nosmarttab

	" Markdown indentation should mirror YAML for use in frontmatter, also
	" enable spelling.
	au FileType markdown setlocal ts=2 sts=2 sw=2 expandtab nosmarttab spell

	" Always use spaces for the package.json file.
	au BufNewFile,BufRead package.json setlocal ts=2 sts=2 sw=2 expandtab nosmarttab sts=2

	" Set .reg files to be Window's registry files.
	au BufNewFile,BufRead *.reg setlocal ft=registry
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

" History {{{
" ====
set history=1000	" Increase history.
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

" Reading {{{
" =======
set autoread		" Automatically reload files if changed from outside.
" }}}

" Searching {{{
" =========
set hlsearch		" Highlight matches.
set incsearch		" Highlight matches as we type.
set ignorecase		" Ignore case when searching.
set smartcase		" Don't ignore case when different cases searched for.
" }}}

" Scrolling {{{
" =========
set scrolloff=5			" Keep a minimum of 5 line below the cursor.
set sidescrolloff=5		" Keep a minimum of 5 columns left of the cursor.
" }}}

" Signify {{{
" =======
" Specify which VCS to check for.
let g:signify_vcs_list = [ 'git' ]
" Work in near-realtime.
let g:signify_realtime = 1
" Disable two of the sign update methods
" as they write the buffer.
let g:signify_cursorhold_normal = 0
let g:signify_cursorhold_insert = 0
" }}}

" Spelling {{{
" ========
set spelllang=en_gb
set spellfile=~/.vim/spell/en-gb.utf-8.add
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
set autoindent					" Match indentation of the previous line.

" Display the tab characters and end of line characters.
set list
set listchars=tab:▸\ ,eol:¬
" }}}

" Timeout Lengths {{{
" ===============
" This should make pressing ESC more responsive.
" Alternative to `set esckeys` as this breaks sequences
" in INSERT mode that uses ESC.
set timeoutlen=250 ttimeoutlen=0
" }}}

" Tmuxline {{{
" ========
let g:tmuxline_powerline_separators = 1
" }}}

" UI & Visual Cues {{{
" ================
set ruler			" Show ruler.
set showcmd			" Show incomplete commands.
set nocursorline	" Highlight the current line.
set lazyredraw		" Lazy redraw.
set number			" Line Numbers
set report=0		" Display messages for changes (ie. yank, delete, etc.)
set showmatch		" Show matching brackets.
set mat=5			" Matching bracket duration.
set visualbell		" Shut up, Vim.
set laststatus=2	" Always show the status line.
" }}}

" Undo/Backups {{{
" ============
" Change undo and backup directories to keep things clean.
set backupdir=~/.vim/backup
set undodir=~/.vim/undo
" }}}

" YouCompleteMe {{{
" =============
" Add handy bindings for You Complete Me subcommands.
nnoremap <leader>fi :YcmCompleter FixIt<CR>
nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>gt :YcmCompleter GetType<CR>
nnoremap <leader>gp :YcmCompleter GetParent<CR>
nnoremap <leader>sd :YcmShowDetailedDiagnostic<CR>
" }}}

" vim:foldmethod=marker:foldlevel=0
