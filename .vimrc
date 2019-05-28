" davidtwco .vimrc Configuration
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

" Plugins {{{
" =======
if exists('*minpac#init')
    " minpac is loaded.
    call minpac#init()

    " Don't update minpac with minpac. I handle this with submodules.
    " call minpac#add('k-takata/minpac', {'type': 'opt'})

    " Currently using the categorization from `vimawesome.com` because I couldn't
    " work out anything better.

    " Language {{{
    " --------
    " Polyglot - adds a bunch of syntax handling for different languages
    " and tools, check if new languages are included before adding them
    " manually.
    call minpac#add('sheerun/vim-polyglot')

    " Rust (normally in polyglot but I like to keep this up to date manually)
    call minpac#add('rust-lang/rust.vim')

    " Pandoc
    call minpac#add('vim-pandoc/vim-pandoc')
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

    " Puppet
    call minpac#add('rodjek/vim-puppet')

    " GraphQL
    call minpac#add('jparise/vim-graphql')
    " }}}

    " Completion {{{
    " ----------
    " Generate ctags for projects.
    call minpac#add('ludovicchabant/vim-gutentags')

    " Auto-adds 'end' where appropriate.
    call minpac#add('tpope/vim-endwise')
    " }}}

    " Code display {{{
    " ------------
    " Hybrid colour scheme.
    call minpac#add('w0ng/vim-hybrid')
    " }}}

    " Integrations {{{
    " ------------
    " Autocompletion/linting.
    call minpac#add('w0rp/ale')
    call minpac#add('maximbaz/lightline-ale')

    " Add `gc` operator to comment out lines.
    call minpac#add('tpope/vim-commentary')

    " Improvements to netrw.
    call minpac#add('tpope/vim-vinegar')

    " Show Git changes in the sign column.
    call minpac#add('mhinz/vim-signify')

    " Wrapper for Git.
    call minpac#add('tpope/vim-fugitive')

    " GitHub extension for `vim-fugitive`.
    call minpac#add('tpope/vim-rhubarb')

    if has("unix")
        " Helper functions for unix commands (`mkdir`, `mv`, etc.)
        call minpac#add('tpope/vim-eunuch')
    endif

    " Activate/deactivate and list virtual environments.
    call minpac#add('jmcantrell/vim-virtualenv', {'type': 'opt'})

    " Easy navigation between vim splits and tmux panes.
    call minpac#add('christoomey/vim-tmux-navigator')

    " Functions that interact with tmux.
    call minpac#add('tpope/vim-tbone', {'type': 'opt'})

    " Focus events & clipboard for tmux.
    call minpac#add('roxma/vim-tmux-clipboard')
    call minpac#add('tmux-plugins/vim-tmux-focus-events')
    " }}}

    " Interface {{{
    " ---------
    " Switch to absolute line numbers for buffers that are not selected.
    call minpac#add('jeffkreeftmeijer/vim-numbertoggle')

    " Fuzzy file search.
    call minpac#add('junegunn/fzf.vim')

    " Hide interface elements for writing.
    call minpac#add('junegunn/goyo.vim', {'type': 'opt'})

    " Text filtering and alignment.
    call minpac#add('godlygeek/tabular', {'type': 'opt'})

    " Statusline
    call minpac#add('itchyny/lightline.vim')

    " Visualize the undo tree.
    call minpac#add('simnalamburt/mundo.vim', {'type': 'opt'})

    " Show marks in sign column
    call minpac#add('kshenoy/vim-signature')
    " }}}

    " Commands {{{
    " --------
    " Adds `s` motion for matching any two characters.
    call minpac#add('justinmk/vim-sneak')

    " Search/substitution/abbrevation of word variations.
    call minpac#add('tpope/vim-abolish', {'type': 'opt'})

    " Date manipulation commands.
    call minpac#add('tpope/vim-speeddating', {'type': 'opt'})

    " Improve '.' (repeat) for plugin maps.
    call minpac#add('tpope/vim-repeat')

    " Access unicode character metadata.
    call minpac#add('tpope/vim-characterize', {'type': 'opt'})

    " Session saving.
    call minpac#add('tpope/vim-obsession', {'type': 'opt'})

    if has('nvim')
        " Neovim terminal utilities.
        call minpac#add('vimlab/split-term.vim')
    endif

    " Handy bracket matchings.
    call minpac#add('tpope/vim-unimpaired')

    " Commands for interacting with surroundings ("", '', {}, etc.).
    call minpac#add('tpope/vim-surround')

    " Move cursor left or right through argument lists, etc.
    call minpac#add('AndrewRadev/sideways.vim')
    " }}}

    " Other {{{
    " -----
    " Detect indentation heuristically.
    call minpac#add('tpope/vim-sleuth')

    " Apply indentation from .editorconfig files.
    call minpac#add('editorconfig/editorconfig-vim')

    " Live Markdown preview (requires npm package - `livedown`).
    call minpac#add('shime/vim-livedown', {'type': 'opt'})

    " Support markdown headers as fold markers.
    call minpac#add('masukomi/vim-markdown-folding')

    " Multi-file search (`Ack`)
    call minpac#add('wincent/ferret')

    " Improved incremental search - hides search highlighting after moving cursor.
    call minpac#add('haya14busa/is.vim')

    " Enhanced '%' functionality.
    call minpac#add('geoffharcourt/vim-matchit')

    " Vimscript debugging with stacktraces.
    call minpac#add('haya14busa/vim-stacktrace', {'type': 'opt'})

    " Look for project-specific vimrc files - useful for enabling linters on save for my projects.
    call minpac#add('embear/vim-localvimrc')
    " }}}
endif
" }}}

" Ale {{{
" ===
" Enable completion.
let g:ale_completion_enabled = 1
" Fix completion bug in some versions of Vim.
set completeopt=menu,menuone,preview,noselect,noinsert

" Set formatting.
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Set linters and fixers.
let g:ale_linters_explicit = 1
let g:ale_linters = {
\   'c': [ 'clangd', 'clangtidy' ],
\   'cpp': [ 'clangd', 'clangtidy' ],
\   'css': [ 'csslint' ],
\   'llvm': [ 'llc' ],
\   'lua': [ 'luac' ],
\   'python': [ 'flake8' ],
\   'ruby': [ 'rubocop' ],
\   'rust': [ 'cargo', 'rls' ],
\   'sh': [ 'shell', 'shellcheck' ],
\   'vim': [ 'vint' ],
\   'zsh': [ 'shell', 'shellcheck' ],
\ }

" Use stable Rust for RLS.
let g:ale_rust_rls_toolchain = 'stable'
" Enable clippy if available.
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')

" Tell ALE where to look for `compilation-commands.json`.
let g:ale_c_build_dir_names = [ 'build', 'bin' ]

" Helper function that tries to find the most appropriate clang{-tidy,-format, d,}
" executable.
function! FindClangExecutable(name)
    " Look in the build directory for clang or tools. Useful when working on clang.
    for build_dir in g:ale_c_build_dir_names
        let binary_name = './' . build_dir . '/bin/' . a:name
        if executable(binary_name)
            return binary_name
        endif
    endfor

    " Look for names prefixed with a version number, which often come from an
    " apt repository and are more up-to-date than the un-suffixed binary.
    let versions = [ '-9', '-8', '-7' ]
    for version_suffix in versions
        let binary_name = a:name . version_suffix
        if executable(binary_name)
            return binary_name
        endif
    endfor

    " Fallback to the unsuffixed binary.
    return a:name
endfunction

" Find the best path for clang binaries and tools.
let g:ale_c_clangd_executable = FindClangExecutable('clangd')
let g:ale_cpp_clangd_executable = g:ale_c_clangd_executable

let g:ale_c_clang_executable = FindClangExecutable('clang')
let g:ale_cpp_clang_executable = g:ale_c_clang_executable

let g:ale_c_clangtidy_executable = FindClangExecutable('clang-tidy')
let g:ale_cpp_clangtidy_executable = g:ale_c_clangtidy_executable

" ALE's C++ configuration shares the value of the C configuration for `clang-format`.
let g:ale_c_clangformat_executable = FindClangExecutable('clang-format')

" Limit clangtidy checks.
let g:ale_c_clangtidy_checks = ['clang-analyzer-*', 'cppcoreguidelines-*', 'llvm-*']
let g:ale_cpp_clangtidy_checks = g:ale_c_clangtidy_checks

" `*` means any language not matched explicitly, not all languages (ie. if ft is `rust`, ALE will
" only load the `rust` list, not `rust` and `*`).
let g:ale_fixers = {
\ '*': [ 'remove_trailing_lines', 'trim_whitespace' ],
\ 'cpp': ['clang-format', 'remove_trailing_lines', 'trim_whitespace' ],
\ 'rust': [ 'rustfmt', 'remove_trailing_lines', 'trim_whitespace' ],
\ 'sh': ['shfmt', 'remove_trailing_lines', 'trim_whitespace' ],
\ }

" Don't apply formatters that re-write files on save, these sometimes aren't used in projects.
" Use `.lvimrc` to override this.
let g:ale_fix_on_save = 1
let g:ale_fix_on_save_ignore = {
\ 'cpp': ['clang-format'],
\ 'rust': ['rustfmt'],
\ }

" Disable Ale for `.tex.njk` files.
let g:ale_pattern_options = {
\   '.*\.tex\.njk$': { 'ale_enabled': 0 },
\ }

" Show hover balloon when over a definition.
let g:ale_set_balloons = 1

" Set mappings.
nmap <leader>ad <plug>(ale_go_to_definition)
nmap <leader>ar <plug>(ale_find_references)
nmap <leader>ah <plug>(ale_hover)
nmap <leader>af <plug>(ale_fix)
nmap <leader>at <plug>(ale_detail)
nmap <leader>an <plug>(ale_next_wrap)
nmap <leader>ap <plug>(ale_previous_wrap)

" Set quicker mappings.
nmap <C-n> <plug>(ale_next_wrap)
nmap <C-@> <plug>(ale_previous_wrap)
" }}}

" Buffers {{{
" =======
" Vim should create hidden buffers more liberally.
" ie. it should not prompt when switching between open files (in buffers) when
" those files have changes.
set hidden
" }}}

" Colours {{{
" ======
syntax enable

" Load the colour scheme. Check if it exists so dotfiles bootstrap script doesn't
" error on this line when trying to download plugins.
if !empty(globpath(&packpath, 'pack/minpac/start/vim-hybrid/colors/hybrid.vim'))
    colorscheme hybrid
    let g:hybrid_custom_term_colors = 1
endif

" Set the background to dark.
set background=dark

" Set the colour of the colour column (used to highlight where lines should wrap).
highlight ColorColumn ctermbg=8 guibg=lightgrey

" Set the colour of the statusline. While lightline handles the majority of this, it
" won't colour the single character between two statuslines when there is a vertical
" split, this will.
highlight StatusLine cterm=NONE ctermbg=234 guibg=#1D1F21
highlight StatusLineNC cterm=NONE ctermbg=234 guibg=#1D1F21

" Define colour variables (used in lightline's custom colour scheme).
let s:black = '#282A2E'
let s:c_black = 0
let s:red = '#A54242'
let s:c_red = 1
let s:green = '#8C9440'
let s:c_green = 2
let s:yellow = '#DE935F'
let s:c_yellow = 3
let s:blue = '#5F819D'
let s:c_blue = 4
let s:magenta = '#85678F'
let s:c_magenta = 5
let s:cyan = '#5E8D87'
let s:c_cyan = 6
let s:white = '#707880'
let s:c_white = 7
let s:bright_black = '#373B41'
let s:c_bright_black = 8
let s:bright_red = '#CC6666'
let s:c_bright_red = 9
let s:bright_green = '#B5BD68'
let s:c_bright_green = 10
let s:bright_yellow = '#F0C674'
let s:c_bright_yellow = 11
let s:bright_blue = '#81A2BE'
let s:c_bright_blue = 12
let s:bright_magenta = '#B294BB'
let s:c_bright_magenta = 13
let s:bright_cyan = '#8ABEB7'
let s:c_bright_cyan = 14
let s:bright_white = '#C5C8C6'
let s:c_bright_white = 15

let s:bg = '#1D1F21'
let s:c_bg = 234
let s:fg = s:bright_white
let s:c_fg = s:c_bright_white
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
    au FileType markdown set foldexpr=NestedMarkdownFolds()

    " Git commits should break lines at 72 characters.
    au FileType gitcommit setlocal tw=72

    " Always use spaces for the package.json file.
    au BufNewFile,BufRead package.json setlocal ts=2 sts=2 sw=2 expandtab nosmarttab sts=2

    " Set .reg files to be Window's registry files.
    au BufNewFile,BufRead *.reg setlocal ft=registry
    " Set .tera files to be highlighted as Jinja templates.
    au BufNewFile,BufRead *.tera setlocal ft=jinja
    " Set .nuspec files to be XML files.
    au BufNewFile,BufRead *.nuspec setlocal ft=xml
    " Set .hocon files to be Hocon files.
    au BufNewFile,BufRead *.hocon setlocal ft=hocon
    " Set Jenkinsfile files to be Groovy files.
    au BufNewFile,BufRead Jenkinsfile setlocal ft=groovy
    " Set markdown files to be highlighted without the Pandoc plugin.
    au BufNewFile,BufFilePre,BufRead *.md setlocal ft=markdown
    " Set .pp files to be highlighted as Puppet. For some reason, these were being considered
    " `conf` files.
    au BufNewFile,BufRead *.pp setlocal ft=puppet
endif
" }}}

" Folding {{{
" =======
" Enable folding.
set foldenable
" Open 10 levels of folds by default.
set foldlevelstart=10
" 10 nested folds max.
set foldnestmax=10
" Fold based on indentation.
set foldmethod=indent
" }}}

" Functions {{{
" =========
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

" Capture the output of an ex command.
function! Redir(cmd)
  " Close any scratch windows.
  for win in range(1, winnr('$'))
    if getwinvar(win, 'scratch')
      execute win . 'windo close'
    endif
  endfor

  if a:cmd =~ '^!'
    " Handle commands starting with `!` by running commands on the system.
    execute "let output = system('" . substitute(a:cmd, '^!', '', '') . "')"
  else
    " Else run input as ex commands.
    redir => output
    execute a:cmd
    redir END
  endif

  " Open a new scratch window.
  vnew
  let w:scratch = 1
  setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile

  " Add the command output.
  call setline(1, split(output, "\n"))
endfunction
command! -nargs=1 -complete=command Redir silent call Redir(<f-args>)
" }}}

" fzf {{{
" ===
" Set mappings.
nnoremap <leader>pf :Files<CR>
nnoremap <leader>pg :GFiles<CR>
nnoremap <leader>pc :Commits<CR>
nnoremap <leader>pb :Buffers<CR>
nnoremap <leader>pt :Tags<CR>
nnoremap <leader>pr :Rg<CR>

" Set quicker mappings.
nnoremap <C-p> :Files<CR>
nnoremap <C-q> :Tags<CR>
nnoremap <C-s> :Buffers<CR>
nnoremap <C-x> :Rg<CR>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><C-k> <plug>(fzf-complete-word)
imap <c-x><C-f> <plug>(fzf-complete-path)
imap <c-x><C-j> <plug>(fzf-complete-file-ag)
imap <c-x><C-l> <plug>(fzf-complete-line)
" }}}

" Gutentags {{{
" =========
" Silences an error about this being unset.
let g:gutentags_exclude_filetypes = []

" Only generate tags for files tracked by Git (e.g. stops LLVM being included for Rust)
let g:gutentags_file_list_command = {
\   'markers': {
\     '.git': 'git ls-files',
\     '.hg': 'hg files',
\   },
\ }
" }}}

" History {{{
" =======
" Increase history.
set history=1000
" }}}

" Lightline {{{
" =========
let g:lightline = {}
let g:lightline.colorscheme = 'davidtwco'
let g:lightline.separator = { 'left': '⬣', 'right': '⬣' }
let g:lightline.subseparator = g:lightline.separator

let g:lightline.active = {
\   'left': [
\       [ 'mode' ],
\       [ 'paste', 'spell', 'gitbranch', 'readonly' ],
\       [ 'filename' ]
\   ],
\   'right': [
\       [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
\       [ 'gutentags' ],
\       [ 'obsession' ],
\       [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex', 'lineinfo', 'percent' ]
\   ]
\ }

let g:lightline.component_expand = {
\   'linter_checking': 'lightline#ale#checking',
\   'linter_warnings': 'lightline#ale#warnings',
\   'linter_errors': 'lightline#ale#errors',
\   'linter_ok': 'lightline#ale#ok',
\ }

let g:lightline.component_type = {
\   'linter_checking': 'left',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error',
\   'linter_ok': 'left',
\ }

let g:lightline.component_function = {
\   'gitbranch': 'LightlineGitBranch',
\   'gutentags': 'LightlineGutentags',
\   'obsession': 'LightlineObsessionStatus',
\   'readonly': 'LightlineReadonly',
\   'charvaluehex': 'LightlineCharacterHex',
\   'fileencoding': 'LightlineFileEncoding',
\   'fileformat': 'LightlineFileFormat',
\   'filetype': 'LightlineFileType',
\   'filename': 'LightlineFilename'
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

    if len(shortened_filepath) < (winwidth('%') / 1.8)
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

" Define an arbitrary number of columns, below which the statusline becomes less detailed.
let s:collapse_threshold = 106

function! LightlineGutentags()
    " Show the tag generation status, with detail depending on window width.
    return gutentags#statusline('', '', winwidth(0) > s:collapse_threshold ? '△ Tagging...' : '△')
endfunction

function! LightlineObsessionStatus()
    " Show the obsession status if the plugin is enabled, with detail depending on window width.
    let tracked = winwidth(0) > s:collapse_threshold ? '● Tracked' : '●'
    let untracked = winwidth(0) > s:collapse_threshold ? '○ Untracked' : '○'
    return exists('*ObsessionStatus') ? ObsessionStatus(tracked, untracked) : ''
endfunction

function! LightlineCharacterHex()
    " Don't show the character hex on windows that aren't wide.
    "
    " Vim provides a handy '%B' escape code for use in 'statusline', but it's not easy to get
    " the hex value of a character under the cursor without that.
    let hex =  printf('%X', char2nr(matchstr(getline('.'), '\%' . col('.') . 'c.')))
    return winwidth(0) > s:collapse_threshold ? hex : ''
endfunction

function! LightlineFileEncoding()
    " Don't show the file encoding on windows that aren't wide.
    return winwidth(0) > s:collapse_threshold ? &fileencoding : ''
endfunction

function! LightlineGitBranch()
    " Don't show the git branch on windows that aren't wide.
    return winwidth(0) > s:collapse_threshold ? fugitive#head() : ''
endfunction

function! LightlineFileFormat()
    " Don't show the file format on windows that aren't wide.
    return winwidth(0) > s:collapse_threshold ? &fileformat : ''
endfunction

function! LightlineFileType()
    " Don't show the file type on windows that aren't wide.
    return winwidth(0) > s:collapse_threshold ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineReadonly()
    " Don't show any read-only indicator for writable files.
    return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction

" Define a custom colorscheme that matches the tmux configuration.
let s:p = {
\   'normal': {},
\   'inactive': {},
\   'insert': {},
\   'replace': {},
\   'visual': {},
\   'terminal': {},
\   'command': {},
\   'tabline': {}
\ }

" All palettes have the form:
"   s:p.{mode}.{where] = [ [ {guifg}, {guibg}, {ctermfg}, {ctermbg} ] ]

" Inactive windows have terminal background and a muted foreground.
let s:p.inactive.middle = [ [s:bright_black, s:bg, s:c_bright_black, s:c_bg] ]
let s:p.inactive.right = [ s:p.inactive.middle[0], s:p.inactive.middle[0] ]
let s:p.inactive.left = [ s:p.inactive.middle[0], s:p.inactive.middle[0] ]

" Normal mode's left statusline has terminal background with green foreground (for `NORMAL`),
" followed gray foreground (for the git branch or `PASTE`) and then white foreground for filename.
let s:p.normal.left = [
\   [s:bright_green, s:bg, s:c_bright_green, s:c_bg],
\   [s:bright_black, s:bg, s:c_bright_black, s:c_bg],
\   [s:fg, s:bg, s:c_fg, s:c_bg]
\ ]
let s:p.normal.middle = [ [ s:bright_black, s:bg, s:c_bright_black, s:c_bg] ]
" Normal mode's right status line has terminal background with green foreground (for ALE),
" followed by white foreground (for Gutentags), and then by white foreground (for Obsession),
" finished off with bright black foreground (for line/col/hex/encoding, etc).
let s:p.normal.right = [
\   [s:bright_green, s:bg, s:c_bright_green, s:c_bg],
\   [s:white, s:bg, s:c_white, s:c_bg],
\   [s:white, s:bg, s:c_white, s:c_bg],
\   s:p.normal.left[1], s:p.normal.left[2]
\ ]

let s:p.normal.error = [ [s:bright_red, s:bg, s:c_bright_red, s:c_bg] ]
let s:p.normal.warning = [ [s:yellow, s:bg, s:c_yellow, s:c_bg] ]

" Insert mode has terminal background and blue foreground, followed by the same as normal
" mode.
let s:p.insert.left = [
\   [s:bright_blue, s:bg, s:c_bright_blue, s:c_bg],
\   s:p.normal.left[1], s:p.normal.left[2]
\ ]
let s:p.insert.middle = s:p.normal.middle
let s:p.insert.right = s:p.normal.right

" Insert mode has terminal background and red foreground, followed by the same as normal mode.
let s:p.replace.left = [
\   [s:bright_red, s:bg, s:c_bright_red, s:c_bg],
\   s:p.normal.left[1], s:p.normal.left[2]
\ ]
let s:p.replace.middle = s:p.normal.middle
let s:p.replace.right = s:p.normal.left

" Visual mode has terminal background and yellow foreground, followed by the same as normal
" mode.
let s:p.visual.left = [
\   [s:bright_yellow, s:bg, s:c_bright_yellow, s:c_bg],
\   s:p.normal.left[1], s:p.normal.left[2]
\ ]
let s:p.visual.middle = s:p.normal.middle
let s:p.visual.right = s:p.normal.right

" Terminal mode has terminal background and magenta foreground, followed by the same as normal
" mode.
let s:p.terminal.left = [
\   [s:bright_magenta, s:bg, s:c_bright_magenta, s:c_bg],
\   s:p.normal.left[1], s:p.normal.left[2]
\ ]
let s:p.terminal.middle = s:p.normal.middle
let s:p.terminal.right = s:p.normal.right

" Command mode has terminal background and cyan foreground, followed by the same as normal
" mode.
let s:p.command.left = [
\   [s:bright_cyan, s:bg, s:c_bright_cyan, s:c_bg],
\   s:p.normal.left[1], s:p.normal.left[2]
\ ]
let s:p.command.middle = s:p.normal.middle
let s:p.command.right = s:p.normal.right

" Tabline has current tab in white, other tabs in gray, and terminal background.
let s:p.tabline.left = [ [s:white, s:bg, s:c_white, s:c_bg] ]
let s:p.tabline.tabsel = [ [s:fg, s:bg, s:c_fg, s:c_bg] ]
let s:p.tabline.middle = s:p.tabline.left
let s:p.tabline.right = [ [s:white, s:bg, s:c_white, s:c_bg], [s:fg, s:bg, s:c_fg, s:c_bg] ]

let g:lightline#colorscheme#davidtwco#palette = s:p
" }}}

" Local .vimrc {{{
" ===========
" Enable global loading of local .vimrc files.
let g:localvimrc_enable = 1

" Ask me before loading any files.
let g:localvimrc_ask = 1

" Keep track of which files I've loaded in the past and don't ask again.
" (only if answer was uppercase)
let g:localvimrc_persistent = 1

" Save the persistence file in the `.vim` folder.
let g:localvimrc_persistence_file = $HOME . '/.vim/lvimrc_persistence'
" }}}

" Markdown {{{
" ========
let g:pandoc#filetypes#pandoc_markdown = 0
let g:pandoc#folding#fdc = 0

let g:vim_markdown_conceal = 0
let g:markdown_syntax_conceal = 0
" }}}

" Mappings {{{
" ========
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>r :so $MYVIMRC<CR>

" `w!!` will save a file opened without sudo.
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
" }}}

" Mouse {{{
" ==============
" Enable the mouse.
set mouse=a
" }}}

" Organization {{{
" ============
" Sets the expected modeline format.
set modeline modelines=1
" }}}

" Polyglot {{{
" ========
let g:polyglot_disabled = ['rust']
" }}}

" PostgreSQL {{{
" ==========
" Use Postgres highlighting for all SQL.
let g:sql_type_default = 'pgsql'
" }}}

" Reading {{{
" =======
" Automatically reload files if changed from outside.
set autoread
" }}}

" Searching {{{
" =========
" Highlight matches.
set hlsearch
" Highlight matches as we type.
set incsearch
" Ignore case when searching.
set ignorecase
" Don't ignore case when different cases searched for.
set smartcase
" }}}

" Scrolling {{{
" =========
" Keep a minimum of 5 line below the cursor.
set scrolloff=5
" Keep a minimum of 5 columns left of the cursor.
set sidescrolloff=5
" }}}

" Sideways {{{
" ========
nnoremap <C-,> :SidewaysJumpLeft<CR>
nnoremap <C-.> :SidewaysJumpRight<CR>
" }}}

" Signify {{{
" =======
" Specify which VCS to check for.
let g:signify_vcs_list = [ 'git', 'yadm' ]
" Work in near-realtime.
let g:signify_realtime = 1
" Disable two of the sign update methods as they write the buffer.
let g:signify_cursorhold_normal = 0
let g:signify_cursorhold_insert = 0
" }}}

" Sleuth {{{
" ======
" Set defaults for when detection fails or in new files.
set ts=4 sts=4 sw=4 et
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
if has("nvim") || has("terminal")
    " Bind ESC to exit terminal mode.
    tnoremap <Esc> <C-\><c-n>
    " Bind Ctrl + V and ESC to send ESC to terminal process.
    tnoremap <C-v><Esc> <Esc>
endif
" }}}

" Timeout Lengths {{{
" ===============
" This should make pressing ESC more responsive.
" Alternative to `set esckeys` as this breaks sequences in INSERT mode that uses ESC.
set timeoutlen=250 ttimeoutlen=0
" }}}

" UI & Visual Cues {{{
" ================
" Show ruler.
set ruler
" Show incomplete commands.
set showcmd
" Highlight the current line.
set nocursorline
" Lazy redraw.
set lazyredraw
" Line Numbers
set number
" Display messages for changes (ie. yank, delete, etc.)
set report=0
" Show matching brackets.
set showmatch
" Matching bracket duration.
set mat=5
" Shut up, Vim.
set visualbell
" Always show the status line.
set laststatus=2
" Use relative line numbers.
set relativenumber
" Don't display '-- INSERT --', handled by statusline.
set noshowmode
" Colour 40 columns after column 80.
let &colorcolumn="100,".join(range(140, 1000, 40), ",")

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

" Plugins {{{
" =======
" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', { 'do': 'call minpac#status()' })
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus  packadd minpac | source $MYVIMRC | call minpac#status()
" }}}

" vim:foldmethod=marker:foldlevel=0:ts=4:sts=4:sw=4
