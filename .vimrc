" David Wood's .vimrc Configuration
"  dotfiles: https://github.com/davidtwco/dotfiles
"  website: https://davidtw.co
" =================================

" For a paranoia.
" Normally `:set nocp` is not needed, because it is done automatically
" when .vimrc is found.
if &compatible
  " `:set nocp` has many side effects. Therefore this should be done
  " only when 'compatible' is set.
  set nocompatible
endif

" When using minpac, we need to add fzf to the runtime path manually.
set rtp+=~/.fzf

" Plugins
" =======
if exists('*minpac#init')
    " minpac is loaded.
    call minpac#init()
    call minpac#add('k-takata/minpac', {'type': 'opt'})

    " Colour Schemes
    call minpac#add('w0ng/vim-hybrid')

    " Autocomplete
    call minpac#add('autozimu/LanguageClient-neovim')
    call minpac#add('Shougo/deoplete.nvim')
    if !has('nvim')
        call minpac#add('roxma/nvim-yarp')
        call minpac#add('roxma/vim-hug-neovim-rpc')
    endif

    " Comments.
    call minpac#add('tpope/vim-commentary')

    " Ctags
    call minpac#add('ludovicchabant/vim-gutentags')

    " Improvements to netrw.
    call minpac#add('tpope/vim-vinegar')
    " Fuzzy file search.
    call minpac#add('junegunn/fzf.vim')

    " Show Git changes.
    call minpac#add('mhinz/vim-signify')
    " Git wrapper.
    call minpac#add('tpope/vim-fugitive', {'type': 'opt'})
    call minpac#add('tpope/vim-rhubarb', {'type': 'opt'})

    " Detect indentation heuristically.
    call minpac#add('tpope/vim-sleuth')
    " Apply indentation from .editorconfig files.
    call minpac#add('editorconfig/editorconfig-vim')

    " Linting
    call minpac#add('w0rp/ale')

    " Markdown Preview (requires npm package - livedown).
    call minpac#add('shime/vim-livedown', {'type': 'opt'})
    " Distraction-free Writing.
    call minpac#add('junegunn/goyo.vim', {'type': 'opt'})
    " Folding
    call minpac#add('nelstrom/vim-markdown-folding')

    " Navigation
    call minpac#add('justinmk/vim-sneak')

    " Word variation helper.
    call minpac#add('tpope/vim-abolish', {'type': 'opt'})
    " Improve '.' (repeat) for plugin maps.
    call minpac#add('tpope/vim-repeat')
    " Get character codes.
    call minpac#add('tpope/vim-characterize', {'type': 'opt'})
    " Replace and paste!
    call minpac#add('davidtwco/vim-replace-paste')

    if has("unix")
        " Unix helpers
        call minpac#add('tpope/vim-eunuch')
    endif

    " Work with Python virtual environments.
    call minpac#add('jmcantrell/vim-virtualenv', {'type': 'opt'})

    " Line up text.
    call minpac#add('godlygeek/tabular', {'type': 'opt'})

    " Easy navigation between vim splits and tmux panes.
    call minpac#add('christoomey/vim-tmux-navigator')
    " Functions that interact with tmux.
    call minpac#add('tpope/vim-tbone', {'type': 'opt'})
    " Generate statuslines for tmux.
    call minpac#add('edkolev/tmuxline.vim', {'type': 'opt'})
    " Focus events & clipboard
    call minpac#add('roxma/vim-tmux-clipboard')
    call minpac#add('tmux-plugins/vim-tmux-focus-events')

    " Searching
    call minpac#add('wincent/ferret')
    " Improved incremental search
    call minpac#add('haya14busa/is.vim')

    " Session Saving
    call minpac#add('tpope/vim-obsession', {'type': 'opt'})

    " Statusline
    call minpac#add('itchyny/lightline.vim')
    call minpac#add('cocopon/lightline-hybrid.vim')

    " Terminal
    if has('nvim')
        call minpac#add('vimlab/split-term.vim')
    endif

    " Enhanced '%' functionality.
    call minpac#add('geoffharcourt/vim-matchit')
    " Handy bracket matchings.
    call minpac#add('tpope/vim-unimpaired')
    " Surroundings ("", '', {}, etc.).
    call minpac#add('tpope/vim-surround')
    " Auto-adds 'end' where appropriate.
    call minpac#add('tpope/vim-endwise')

    " Visualize the undo tree.
    call minpac#add('simnalamburt/mundo.vim', {'type': 'opt'})

    " Polyglot - adds a bunch of syntax handling for different languages
    " and tools, check if new languages are included before adding them
    " manually.
    call minpac#add('sheerun/vim-polyglot')

    " Pandoc
    call minpac#add('vim-pandoc/vim-pandoc-syntax')
    " Rockerfile
    call minpac#add('NL057/rockerfile.vim')
    " Vagrant
    call minpac#add('hashivim/vim-vagrant')
    " Jinja/Nunjucks
    call minpac#add('niftylettuce/vim-jinja')
    " Hocon
    call minpac#add('GEverding/vim-hocon')
    " Nix
    call minpac#add('LnL7/vim-nix')
    " PostgreSQL
    call minpac#add('lifepillar/pgsql.vim')
endif

" Ale {{{
" ===
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_linters = {
\   'asm': [],
\}

let g:ale_pattern_options = {
\   '.*\.tex\.njk$': { 'ale_enabled': 0 },
\}

nmap <C-n> <Plug>(ale_next_wrap)
" }}}

" Buffers {{{
" =======
" Vim should create hidden buffers more liberally.
" ie. it should not prompt when switching between open files (in buffers) when
" those files have changes.
set hidden
" }}}

" Colors {{{
" ======
syntax enable

if !empty(globpath(&packpath, 'pack/minpac/start/vim-hybrid/colors/hybrid.vim'))
    colorscheme hybrid
    set background=dark
    let g:hybrid_custom_term_colors = 1

    highlight ColorColumn ctermbg=8 guibg=lightgrey
endif
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

" Deoplete {{{
" ========
let g:deoplete#enable_at_startup = 1

" Disable delay
let g:neocomplete#auto_complete_delay = 0

" Use smartcase
let g:neocomplete#enable_smart_case = 1

" Use tabs for completion.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction
" }}}

" Ferret {{{
" ======
" Don't automatically jump to first result or the search results.
let g:FerretAutoJump = 0
" }}}

" File Navigation {{{
" ===============
" Map %% to the current opened file's path.
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<CR>
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
    au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab nosmarttab
    au FileType puppet setlocal ts=2 sts=2 sw=2 expandtab nosmarttab
    au FileType ruby setlocal ts=2 sts=2 sw=2 expandtab nosmarttab

    " Markdown indentation should mirror YAML for use in frontmatter, also
    " enable spelling.
    au FileType markdown setlocal ts=2 sts=2 sw=2 expandtab nosmarttab spell

    " Always use spaces for the package.json file.
    au BufNewFile,BufRead package.json setlocal ts=2 sts=2 sw=2 expandtab nosmarttab sts=2

    " Set .reg files to be Window's registry files.
    au BufNewFile,BufRead *.reg setlocal ft=registry
    " Set .nuspec files to be XML files.
    au BufNewFile,BufRead *.nuspec setlocal ft=xml
    " Set .hocon files to be Hocon files.
    au BufNewFile,BufRead *.hocon setlocal ft=hocon
    " Set Jenkinsfile files to be Groovy files.
    au BufNewFile,BufRead Jenkinsfile setlocal ft=groovy
    " Set markdown files to be highlighted with the Pandoc plugin.
    au BufNewFile,BufFilePre,BufRead *.md setlocal ft=markdown.pandoc
endif
" }}}

" Folding {{{
" =======
set foldenable               " Enable folding.
set foldlevelstart=10        " Open 10 levels of folds by default.
set foldnestmax=10           " 10 nested folds max.
set foldmethod=indent        " Fold based on indentation (for Python)
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

" Toggle between paste and no paste.
function! TogglePaste()
    if(&paste == 1)
        set nopaste
        echom "Switched to no paste."
    else
        set paste
        echom "Switched to paste."
    endif
endfunc
nmap <silent> <leader>p :call TogglePaste()<CR>

" Toggle between absolute line numbers and relative line numbers.
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
        echom "Switched to absolute line numbers."
    else
        set relativenumber
        echom "Switched to relative line numbers."
    endif
endfunc
nmap <silent> <leader>tl :call ToggleNumber()<CR>
" }}}

" fzf {{{
" ===
nnoremap <c-p> :Files<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <leader>pg :GFiles<CR>
nnoremap <leader>pc :Commits<CR>
nnoremap <leader>pb :Buffers<CR>
nnoremap <leader>pt :Tags<CR>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
" }}}

" History {{{
" ====
set history=1000    " Increase history.
" }}}

" Language Server {{{
" ===============
nnoremap <buffer> <leader>ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <buffer> <leader>lh :call LanguageClient_textDocument_hover()<CR>
nnoremap <buffer> <leader>lr :call LanguageClient_textDocument_rename()<CR>
nnoremap <buffer> <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <buffer> <leader>lf :call LanguageClient_textDocument_formatting()<CR>

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {}

" https://github.com/rust-lang-nursery/rls
if executable('rls')
    let g:LanguageClient_serverCommands.rust = ['rustup', 'run', 'stable', 'rls']
endif

" https://github.com/jacobdufault/cquery
if executable('cquery')
    let g:LanguageClient_serverCommands.c = ['cquery', '--language-server']
    let g:LanguageClient_serverCommands.cpp = ['cquery', '--language-server']
endif

" pip install python-language-server
if executable('pyls')
    let g:LanguageClient_serverCommands.python = ['pyls']
endif

" npm install -g javascript-typescript-langserver
if executable('javascript-typescript-stdio')
    let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
    let g:LanguageClient_serverCommands['javascript.jsx'] = ['javascript-typescript-stdio']
    let g:LanguageClient_serverCommands.typescript = ['javascript-typescript-stdio']
    let g:LanguageClient_serverCommands.html = ['html-languageserver', '--stdio']
    let g:LanguageClient_serverCommands.css = ['css-languageserver', '--stdio']
    let g:LanguageClient_serverCommands.less = ['css-languageserver', '--stdio']
    let g:LanguageClient_serverCommands.json = ['json-languageserver', '--stdio']
endif
" }}}

" Lightline {{{
" =========
let g:lightline = {
\     'colorscheme': 'hybrid',
\     'active': {
\       'left': [
\           [ 'mode' ],
\           [ 'paste', 'spell', 'gitbranch', 'readonly', 'filename' ]
\       ],
\       'right': [
\           [ 'lineinfo' ],
\           [ 'percent' ],
\           [ 'obsession', 'languageserver', 'gutentags', 'fileformat',
\             'fileencoding', 'filetype', 'charvaluehex' ]
\       ]
\     },
\     'component_function': {
\       'gitbranch': 'fugitive#head',
\       'gutentags': 'LightlineGutentags',
\       'languageserver': 'LightlineLanguageServer',
\       'obsession': 'ObsessionStatus',
\       'readonly': 'LightlineReadonly',
\       'fileformat': 'LightlineFileformat',
\       'filetype': 'LightlineFiletype',
\       'filename': 'LightlineFilename'
\     }
\ }

function! LightlineFilename()
    " Get the full path of the current file.
    let filepath =  expand('%:p')
    let modified = &modified ? ' +' : ''

    " If the filename is empty, then display
    " nothing as appropriate.
    if empty(filepath)
        return '[No Name]' . modified
    endif

    " Find the correct expansion depending on whether Vim has
    " autochdir.
    let mod = (exists('+acd') && &acd) ? ':~' : ':~:.'

    " Apply the above expansion to the expanded file path and split
    " by the separator.
    let shortened_filepath = fnamemodify(filepath, mod)

    if len(shortened_filepath) < 65
        return shortened_filepath.modified
    endif

    " Ensure that we have the correct slash for the OS.
    let dirsep = has('win32') && ! &shellslash ? '\' : '/'
    " Check if the filepath was shortened above.
    let was_shortened = filepath != shortened_filepath

    " Split the filepath.
    let filepath_parts = split(shortened_filepath, dirsep)

    " Take the first character from each part of the path (except the tidle and filename).
    let initial_position = was_shortened ? 0 : 1
    let excluded_parts = filepath_parts[initial_position:-2]
    let shortened_paths = map(excluded_parts, 'v:val[0]')

    " Recombine the shortened paths with the tilde and filename.
    let combined_parts = shortened_paths + [filepath_parts[-1]]
    let combined_parts = (was_shortened ? [] : [filepath_parts[0]]) + combined_parts

    " Recombine into a single string.
    let finalpath = join(combined_parts, dirsep)
    return finalpath . modified
endfunction
function! LightlineFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
endfunction
function! LightlineFiletype()
    return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction
function! LightlineGutentags()
    return gutentags#statusline('')
endfunction
function! LightlineLanguageServer()
    let status = LanguageClient_statusLine()
    return status == '[]' ? '' : status
endfunction
function! LightlineReadonly()
    return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction
" }}}

" Mappings {{{
" ========
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>r :so $MYVIMRC<CR>

" w!! will save a file opened without sudo.
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
" }}}

" Mouse {{{
" ==============
" Enable the mouse.
set mouse=a
" }}}

" Organization {{{
" ============
set modelines=1            " Sets the expected modeline format.
" }}}

" PostgreSQL {{{
let g:sql_type_default = 'pgsql' " Use Postgres highlighting for all SQL.
" }}}

" Reading {{{
" =======
set autoread        " Automatically reload files if changed from outside.
" }}}

" Searching {{{
" =========
set hlsearch        " Highlight matches.
set incsearch       " Highlight matches as we type.
set ignorecase      " Ignore case when searching.
set smartcase       " Don't ignore case when different cases searched for.
" }}}

" Scrolling {{{
" =========
set scrolloff=5            " Keep a minimum of 5 line below the cursor.
set sidescrolloff=5        " Keep a minimum of 5 columns left of the cursor.
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

" Sleuth {{{
" ======
" Set defaults for when detection fails or in new files.
set ts=4
set expandtab
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

" Terminal Mode {{{
" =============
if has("nvim")
    " Bind ESC to exit terminal mode and then Ctrl + V and ESC to send ESC to terminal process.
    tnoremap <Esc> <C-\><c-n>
    tnoremap <C-v><Esc> <Esc>
endif
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
set ruler           " Show ruler.
set showcmd         " Show incomplete commands.
set nocursorline    " Highlight the current line.
set lazyredraw      " Lazy redraw.
set number          " Line Numbers
set report=0        " Display messages for changes (ie. yank, delete, etc.)
set showmatch       " Show matching brackets.
set mat=5           " Matching bracket duration.
set visualbell      " Shut up, Vim.
set laststatus=2    " Always show the status line.
set relativenumber  " Use Relative Line Numbers.
set noshowmode      " Don't display '-- INSERT --', handled by statusline.
let &colorcolumn="100,".join(range(140, 1000, 40), ",") " Colour 40 columns after column 80.

" Display the tab characters and end of line characters.
set list
set listchars=tab:▸\ ,eol:¬
" }}}

" Undo/Backups {{{
" ============
" If a path ends in '//' then the swap file name
" is built from the entire path. No more issues between
" projects.

" Change swap directory.
if isdirectory($HOME . '/.vim/swap') == 0
    call mkdir($HOME . '/.vim/swap', 'p')
endif
set directory=~/.vim/swap//

" Change backup directory.
if isdirectory($HOME . '/.vim/backup') == 0
    call mkdir($HOME . '/.vim/backup', 'p')
endif
set backupdir=~/.vim/backup//

if exists('+undofile')
    " Change undo directory.
    if isdirectory($HOME . '/.vim/undo') == 0
        call mkdir($HOME . '/.vim/undo', 'p')
    endif
    set undodir=~/.vim/undo//
end

if exists('+shada')
    " Change SHAred DAta path.
    set shada+=n~/.nvim/shada
else
    " Change viminfo path.
    set viminfo+=n~/.vim/viminfo
endif

" I've prefixed these functions with an underscore as I'll
" never want to run them directly.
function! _EchoSwapMessage(message)
    if has("autocmd")
        augroup EchoSwapMessage
            autocmd!
            " Echo the message after entering a file, useful for when
            " we're entering a file (like on SwapExists) and our echo will be
            " eaten.
            autocmd BufWinEnter * echohl WarningMsg
            exec 'autocmd BufWinEnter * echon "\r'.printf("%-60s", a:message).'"'
            autocmd BufWinEnter * echohl NONE

            " Remove these auto commands so that they don't run on entering
            " the next buffer.
            autocmd BufWinEnter * augroup EchoSwapMessage
            autocmd BufWinEnter * autocmd!
            autocmd BufWinEnter * augroup END
        augroup END
    endif
endfunction

function! _HandleSwap(filename)
    " If the swap file is old, delete. If it is new, recover.
    if getftime(v:swapname) < getftime(a:filename)
        let v:swapchoice = 'e'
        call _EchoSwapMessage("Deleted older swapfile.")
    else
        let v:swapchoice = 'r'
        call _EchoSwapMessage("Detected newer swapfile, recovering.")
    endif
endfunc

if has("autocmd")
    augroup AutoSwap
        autocmd!
        autocmd! SwapExists * call _HandleSwap(expand('<afile>:p'))
    augroup END
endif

" Enable keeping track of undo history.
set undofile

" Do not keep track of undo history in temporary files.
augroup vimrc
    autocmd!
    autocmd BufWritePre /tmp/* setlocal noundofile
augroup END
" }}}

" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

" vim:foldmethod=marker:foldlevel=0:ts=4:sts=4:sw=4
