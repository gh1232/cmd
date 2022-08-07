" Miller Medeiros .vimrc file
" heavily inspired by: @factorylabs, @scrooloose, @nvie, @gf3, @bit-theory, ...
set nocompatible            " Disable vi compatibility

filetype on                 " filetype must be 'on' before setting it 'off'
                            "   otherwise it exits with a bad status and breaks
                            "   git commit.
filetype off                " force reloading *after* pathogen loaded

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'wincent/Command-T'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/IndentAnything'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'sjl/gundo.vim'
Plugin 'sjl/clam.vim'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'junkblocker/patchreview-vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'mhinz/vim-signify'
Plugin 'int3/vim-extradite'
Plugin 'christoomey/vim-tmux-navigator'

" css
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'

" js
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'millermedeiros/vim-esformatter'
Plugin 'leafgarland/typescript-vim'
Plugin 'prettier/vim-prettier'

" snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'millermedeiros/vim-statline'
" Plugin 'bling/vim-airline'

" colorschemes
Plugin 'tomasr/molokai'
Plugin 'rakr/vim-one'
Plugin 'vim-scripts/summerfruit256.vim'

" required for vundle
call vundle#end()

syntax on
filetype plugin indent on   " enable detection, plugins and indent


" Local dirs (centralize everything)
set backupdir=~/.vim/backups
set directory=~/.vim/swaps


" Change mapleader (easier to type), at the top since its used everywhere
let mapleader=","
let maplocalleader=";"

set spelllang=en_us         " spell checking
set encoding=utf-8 nobomb   " BOM often causes trouble, UTF-8 is awsum.


" --- performance / buffer ---
set hidden                  " can put buffer to the background without writing
                            "   to disk, will remember history/marks.
set lazyredraw              " don't update the display while executing macros
set ttyfast                 " Send more characters at a given time.


" --- history / file handling ---
set history=999             " Increase history (default = 20)
set undolevels=999          " Moar undo (default=100)
set autoread                " reload files if changed externally


" --- backup and swap files ---
" I save all the time, those are annoying and unnecessary...
set nobackup
set nowritebackup
set noswapfile


" --- search / regexp ---
set gdefault                " RegExp global by default
set magic                   " Enable extended regexes.
set hlsearch                " highlight searches
set incsearch               " show the `best match so far' astyped
set ignorecase smartcase    " make searches case-insensitive, unless they
                            "   contain upper-case letters

" --- keys ---
set backspace=indent,eol,start  " allow backspacing over everything.
set esckeys                     " Allow cursor keys in insert mode.
set nostartofline               " Make j/k respect the columns
" set virtualedit=all            " allow the cursor to go in to 'invalid' places
set timeoutlen=500              " how long it wait for mapped commands
set ttimeoutlen=100             " faster timeout for escape key and others


" Use a bar-shaped cursor for insert mode, even through tmux.
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif




" -----------------------------------------------------------------------------
" UI
" -----------------------------------------------------------------------------

set t_Co=256                " 256 colors terminal

let g:molokai_original=0
colorscheme molokai
" make 'var' keyword easier to spot
hi link javascriptType Keyword
" default ColorColumn is too distractive
hi clear ColorColumn
hi link ColorColumn FoldColumn
" defaul line number is too distractive
hi clear LineNr
hi link LineNr Comment
hi link OverLength Error

" --- UI settings ---


if has('gui_running')
    "set guifont=Menlo:h13
    set gfn:Monaco:h14
    set transp=0

    " toolbar and scrollbars
    set guioptions-=T       " remove toolbar
    set guioptions-=L       " left scroll bar
    set guioptions-=r       " right scroll bar
    set guioptions-=b       " bottom scroll bar
    set guioptions-=h      " only calculate bottom scroll size of current line
    set shortmess=atI       " Don't show the intro message at start and
                            "   truncate msgs (avoid press ENTER msgs).
endif


set cursorline              " Highlight current line
set laststatus=2            " Always show status line
set number                  " Enable line numbers.
set numberwidth=5           " width of numbers line (default on gvim is 4)
set report=0                " Show all changes.
set showmode                " Show the current mode.
set showcmd                 " show partial command on last line of screen.
set showmatch               " show matching parenthesis
set splitbelow splitright   " how to split new windows.
set title                   " Show the filename in the window title bar.

set scrolloff=5             " Start scrolling n lines before horizontal
                            "   border of window.
set sidescrolloff=7         " Start scrolling n chars before end of screen.
set sidescroll=1            " The minimal number of columns to scroll
                            "   horizontally.

" add useful stuff to title bar (file name, flags, cwd)
" based on @factorylabs
if has('title') && (has('gui_running') || &title)
    set titlestring=
    set titlestring+=%f
    set titlestring+=%h%m%r%w
    set titlestring+=\ -\ %{v:progname}
    set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}
endif

" use relative line number by default
" if exists('+relativenumber')
  " set relativenumber
" endif

" --- command completion ---
set wildmenu                " Hitting TAB in command mode will
set wildchar=<TAB>          "   show possible completions.
set wildmode=list:longest
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*
set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif
set wildignore+=*/coverage


" --- diff ---
set diffopt=filler          " Add vertical spaces to keep right
                            "   and left aligned.
set diffopt+=iwhite         " Ignore whitespace changes.


" --- folding---
set foldmethod=manual       " manual fold
set foldnestmax=3           " deepest fold is 3 levels
set nofoldenable            " don't fold by default


" --- list chars ---
" list spaces and tabs to avoid trailing spaces and mixed indentation
" see key mapping at the end of file to toggle `list`
set listchars=tab:▹\ ,trail:·,nbsp:⚋
set fillchars=fold:-
set list


" --- remove sounds effects ---
set noerrorbells
set visualbell




" -----------------------------------------------------------------------------
" INDENTATION AND TEXT-WRAP
" -----------------------------------------------------------------------------

set expandtab                   " Expand tabs to spaces
set autoindent smartindent      " auto/smart indent
set copyindent                  " copy previous indentation on auto indent
set softtabstop=2               " Tab key results in # spaces
set tabstop=2                   " Tab is # spaces
set shiftwidth=2                " The # of spaces for indenting.
set smarttab                    " At start of line, <Tab> inserts shift width
                                "   spaces, <Bs> deletes shift width spaces.

set wrap                        " wrap lines
set textwidth=120
"set colorcolumn=+1              " Show large lines
set formatoptions=qrn1          " automatic formating.
set formatoptions-=o            " don't start new lines w/ comment leader on
                                "   pressing 'o'

set nomodeline                  " don't use modeline (security)

set pastetoggle=<leader>p       " paste mode: avoid auto indent, treat chars
                                "   as literal.



" -----------------------------------------------------------------------------
" PLUGINS
" -----------------------------------------------------------------------------

" --- NERDTree ----
let NERDTreeIgnore=['.DS_Store']
let NERDTreeShowBookmarks=0         "show bookmarks on startup
let NERDTreeHighlightCursorline=1   "Highlight the selected entry in the tree
let NERDTreeShowLineNumbers=0
let NERDTreeMinimalUI=1
noremap <leader>nt :NERDTreeToggle<CR>


" --- NERDCommenter ---

let NERDSpaceDelims=1               " space around delimiters
let NERDRemoveExtraSpaces=1
let g:NERDCustomDelimiters = {
    \ 'scss': { 'left': '//' }
\ }


" --- Syntastic : Linting / Error check ---
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_open=1
" close/open location list (errors)
noremap <silent><leader>lc :lcl<CR>
noremap <silent><leader>lo :Errors<CR> :lw<CR>
noremap <silent><leader>ln :lnext<CR>
noremap <silent><leader>lp :lprev<CR>

" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exec = 'eslintme'
" let g:syntastic_javascript_eslint_generic = 1


" --- autocomplete / supertab / jscomplete ---
set infercase
set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete
set completefunc=syntaxcomplete#Complete
set complete=.,w,b,u,U,t,i,d
" see [autocommands] at the end for more autocomplete settings

" nodejs-complete / jscomplete
let g:node_usejscomplete = 1
let g:jscomplete_use = ['dom', 'moz']

let g:SuperTabMappingForward = '<s-Tab>'
let g:SuperTabMappingBackward = '<s-c-Tab>'
let g:SuperTabLongestEnhanced = 1
let g:SuperTabDefaultCompletionType = "<c-p>"


" --- snipmate ---
let g:snips_author = 'Miller Medeiros'


" --- EasyMotion ---
let g:EasyMotion_leader_key = '<Leader>m'
" lets make <leader>F and <leader>f use easymotion by default
let g:EasyMotion_mapping_f = '<leader>f'
let g:EasyMotion_mapping_F = '<leader>F'



" --- Strip trailing whitespace ---
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction

" Trailing white space (strip spaces)
noremap <leader>ss :call StripWhitespace()<CR>


" --- matchit ---
runtime macros/matchit.vim          " enable matchit (better '%' key mapping)


" --- vim-css-color ---
let g:cssColorVimDoNotMessMyUpdatetime = 1


" --- vim-signify ---
let g:signify_update_on_focusgained = 1


" --- Command-T ---
" let g:CommandTMaxFiles=2000
" let g:CommandTMaxHeight=12
" noremap <silent> <leader>tt :CommandT<CR>
" noremap <silent> <leader>bt :CommandTBuffer<CR>
" noremap <silent> <leader>tf :CommandTFlush<CR>

" --- Ctrl-P ---
let g:ctrlp_working_path_mode = 0
let g:ctrlp_switch_buffer = 0
noremap <silent> <leader>tt :CtrlP<CR>
noremap <silent> <leader>bt :CtrlPBuffer<CR>
noremap <silent> <leader>tf :CtrlPClearCache<CR>



" --- LustyJuggler ---
let g:LustyJugglerSuppressRubyWarning = 1  " avoid error if running on terminal


" --- statline ---
" errors color
hi User3 guifg=#FFFFFF guibg=#FF0000 gui=bold ctermfg=15 ctermbg=1 cterm=bold
let g:statline_fugitive = 1
let g:statline_filename_relative = 1
let g:statline_mixed_indent_string = '[mix]'


" --- gundo ---
nnoremap <leader>gu :GundoToggle<CR>
let g:gundo_right = 1
let g:gundo_preview_bottom = 1


" --- toggle indentation mode ---

function! ToggleExpandTab()
    if &et
        set noet softtabstop=0
    else
        execute "set et softtabstop=". &tabstop
    endif
endfunction

noremap <silent> <leader>et :call ToggleExpandTab()<CR>


" --- Show syntax highlighting groups for word under cursor ---
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
nnoremap <leader>sh :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" faster when opening files with large lines
set synmaxcol=300


" --- Highlight word under cursor ---
" hi W1 guibg=#aeee00 guifg=#000000 ctermbg=154 ctermfg=16
" nnoremap <silent> <leader>h1 :execute 'match W1 /\<<c-r><c-w>\>/'<cr>


" --- Tabular.vim ---
noremap <silent> <leader>t: :Tabularize /:<CR>
noremap <silent> <leader>t= :Tabularize /=<CR>
noremap <silent> <leader>t, :Tabularize /,<CR>
noremap <silent> <leader>t{ :Tabularize /{<CR>
noremap <silent> <leader>t" :Tabularize /"<CR>
noremap <silent> <leader>t' :Tabularize /'<CR>
noremap <silent> <leader>t[ :Tabularize /[<CR>
noremap <silent> <leader>t/ :Tabularize ///<CR>
noremap <silent> <leader>t\| :Tabularize /\|<CR>


" --- include content of static files ---
" borrowed from: http://vim.1045645.n5.nabble.com/vim-counterpart-for-persistent-includes-td4276915.html

function! IncludeStatic()
 :g/<!-- #include "[^"]*" -->\_.\{-}<!-- end include -->/let fname = matchstr(getline('.'),'<!-- #include "\zs[^"]*\ze" -->')|exec '+,/<!-- end include -->/-!cat '.fnameescape(fname)
endfunction

noremap <silent> <leader>ic :call IncludeStatic()<CR>



" --- convert selected text from markdown to HTML ---
vnoremap <silent> <leader>md :! mdown<CR>

function! SanitizeMdown()
    %s/<\/\?p>//
    %s/<br \?\/\?>/ /
    %s/<pre><code>/<pre class="brush:js">\r/
    %s/<\/code><\/pre>/<\/pre>/
endfunc
noremap <silent> <leader>mds :call SanitizeMdown()<CR>



" --- format JavaScript source code using esformatter --

nnoremap <silent> <leader>es :Esformatter<CR>
vnoremap <silent> <leader>es :EsformatterVisual<CR>



" --- toggle autocomplete behavior and word delimiters ---

" better auto complete for CSS class names
" more info: http://blog.millermedeiros.com/vim-css-complete/

function! KeywordsAll()
    setl iskeyword=@,48-57,192-255,\@,\$,%,-,_
endfunc

function! KeywordsBasic()
    setl iskeyword=@,48-57,192-255
endfunc


" --- visual block move ---
" http://www.youtube.com/watch?v=aHm36-na4-4#t=35m10

let g:DVB_TrimWS = 1
vmap  <expr>  <S-LEFT>   DVB_Drag('left')
vmap  <expr>  <S-RIGHT>  DVB_Drag('right')
vmap  <expr>  <S-DOWN>   DVB_Drag('down')
vmap  <expr>  <S-UP>     DVB_Drag('up')
vmap  <expr>  D          DVB_Duplicate()


" --- transform lists ---
" http://www.youtube.com/watch?v=aHm36-na4-4#t=17m30

nmap <leader>ls :call ListTrans_toggle_format()<CR>
vmap <leader>ls :call ListTrans_toggle_format('visual')<CR>



" -----------------------------------------------------------------------------
" KEY MAPPINGS
" -----------------------------------------------------------------------------

" mapleader set at the top of the file to avoid conflicts


" --- FIX/IMPROVE DEFAULT BEHAVIOR ---

" avoid mistyping commands
command! W w
command! Wq wq
command! Bd bd

" Split line (sister to [J]oin lines)
" The normal use of S is covered by cc, so don't worry about shadowing
nnoremap S i<cr><esc><right>

" movement by screen line instead of file line (for text wrap)
nnoremap j gj
nnoremap <down> gj
nnoremap k gk
nnoremap <up> gk

" next tab
nnoremap <C-Tab> :tabn<CR>

" automatic esc, really uncommon to type jj,jk
inoremap jj <ESC>
inoremap jk <Esc>

" Faster scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Bubble single lines, similar to Eclipse (requires unimpaired.vim)
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines, similar to Eclipse (requires unimpaired.vim)
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Duplicate lines, similar to Eclipse
noremap <C-S-Up> YP
noremap <C-S-Down> YP

" 'fix' search regexp to be compatible with Perl format
" nmap / /\v
" vmap / /\v

" Use the damn hjkl keys
" noremap <up> <nop>
" noremap <down> <nop>
" noremap <left> <nop>
" noremap <right> <nop>

" improve the 'search word under cursor' behavior
nnoremap * :silent call KeywordsAll()<CR> *
nnoremap # :silent call KeywordsAll()<CR> #


" --- COMMON STUFF / HELPERS ---

" Toggle show tabs and trailing spaces
nnoremap <leader>c :set nolist!<CR>

" Clear the search highlight
nnoremap <silent> \ :silent nohlsearch<CR>

" text wrap: Hard wrap paragraph text (similar to TextMate Ctrl+Q)
nnoremap <leader>tw gqip
nnoremap <leader>nw :set nowrap<CR>

" Open file (useful for HTML)
noremap <silent> <leader>o :!open %<CR>

" Reformat code
nnoremap <leader>rf gg=G

" I use retab too much and it's hard to type
nnoremap <leader>rt :retab!<CR>

" Pull word under cursor into LHS of a substitute (find and replace)
nnoremap <leader>rr :silent call KeywordsAll()<CR> :%s#\<<C-r>=expand("<cword>")<CR>\>#

" Insert/append a single character
" noremap ,, i_<esc>r
" noremap ;; a_<esc>r

" Visually select the text that was last edited/pasted
nnoremap <leader>v `[v`]

" fast Ack
nnoremap <leader>a :tab split<CR>:Ack<Space>
nnoremap <leader>aw :silent call KeywordsAll()<CR> :tab split<CR>:Ack<cword><CR> :silent call KeywordsBasic()<CR>

" Toggle spelling hints
nnoremap <silent> <leader>ts :set spell!<CR>


" Move between splits (windows)
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Move windows around (only works on same row)
noremap <C-S-Right> <C-w>r
noremap <C-S-Left> <C-w>R

" Open current buffer in a new split
noremap <leader>s :vsplit<cr>
noremap <leader>i :split<cr>

" close window
noremap <leader>q :clo<CR>

" delete buffer but keep window open (requires bufkill.vim)
map <leader>bd :BD<CR>

" smarter next/prev buffer (requires bufkill.vim)
map <leader>bn :BF<CR>
map <leader>bp :BB<CR>

" resize splits (http://vim.wikia.com/wiki/Resize_splits_more_quickly)
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


" add spaces inside current parenthesis
map <leader>( vi(xi  P



" -----------------------------------------------------------------------------
" FILE HANDLING
" -----------------------------------------------------------------------------

" [autocommands] borrowed from @bit-theory vimfiles and edited
augroup mm_buf_cmds
    " clear commands before resetting
    autocmd!

    " when vimrc is edited, reload it
    autocmd bufwritepost .gvimrc source %
    autocmd bufwritepost .vimrc source %

    " Only show cursorline in the current window and in normal mode
    au WinLeave,InsertEnter * set nocul
    au WinEnter,InsertLeave * set cul

    " filetype
    autocmd BufNewFile,BufRead *.json setf json
    autocmd BufNewFile,BufRead *.hx setf haxe

    autocmd FileType mustache runtime! ftplugin/html/sparkup.vim

    " Enable omnicomplete for supported filetypes
    autocmd FileType css,scss setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    " jscomplete is a separate plugin
    autocmd FileType javascript setlocal omnifunc=jscomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

    " make `gf` search for .js files
    autocmd FileType javascript,javascript.jsx setlocal suffixesadd=.js
    autocmd FileType javascript,javascript.jsx setlocal path+=js,scripts,src

    " make sure `complete` works as expected for CSS class names without
    " messing with motions (eg. '.foo-bar__baz') and we make sure all
    " delimiters (_,-,$,%,.) are treated as word separators outside insert mode
    autocmd InsertEnter,BufLeave * :silent call KeywordsAll()
    autocmd InsertLeave,BufEnter * :silent call KeywordsBasic()

    " yes, we need to duplicate it on VimEnter for some weird reason
    autocmd VimEnter * nnoremap * :silent call KeywordsAll()<CR> *
    autocmd VimEnter * nnoremap # :silent call KeywordsAll()<CR> #

    " Toggle relative/absolute line numbers during edit
    " if exists('+relativenumber')
        " autocmd InsertEnter * setl nu
        " autocmd InsertLeave,BufEnter * setl rnu
    " endif

    " highlight char at column 121 (textwidth + 1)
    autocmd BufEnter * match OverLength /\%121v/

    " Color Column (only on insert)
    if exists("&colorcolumn")
        autocmd InsertEnter * set colorcolumn=120
        autocmd InsertLeave * set colorcolumn=""
    endif
  augroup END


" Disable vi compatibility
set nocompatible

" Use Pathogen to load bundles
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
filetype plugin indent on

" Preferences
" -----------------------------------------------------------------------------
set modelines=0
set encoding=utf-8
set scrolloff=3
set sidescrolloff=3
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set noerrorbells
set novisualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set number
set title
set laststatus=2
set splitbelow splitright
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set nowrap
set list
set listchars=tab:▸\ ,eol:¬,trail:·
set foldlevelstart=0
set foldmethod=marker
set formatoptions=tcq
set autowrite

if has("mouse")
 set mouse=a
endif

" Backups
set history=1000
set undolevels=1000
set nobackup
set directory=~/.vim/tmp/swap/

" Searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault
set grepprg=ack
runtime macros/matchit.vim

let mapleader = ','

command! -nargs=* Wrap set wrap linebreak nolist


" Plugin configurations
" -----------------------------------------------------------------------------
let NERDSpaceDelims=1
let NERDTreeIgnore=['.DS_Store']
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes = ['scss']

" Popup menu behavior
set completeopt=longest,menu
set pumheight=20

" Setup supertab to be a bit smarter about it's usage
" let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabLongestEnhanced = 1

" Tell snipmate to pull it's snippets from a custom directory
let g:snippets_dir = $HOME.'/.vim/snippets/'


" Commands and helper functions
" -----------------------------------------------------------------------------

" Sort CSS properties between the braces alphabetically
:command! SortCSS :g#\({\n\)\@<=#.,/}/sort | :noh

" Let Google Linter autofix the js errors in the current buffer
function! FixJS()
  setlocal autoread
  execute('silent !$HOME/.vim/syntax_checkers/compilers/fixjsstyle --strict --nojsdoc %')
endfunction
:command! FJS :call FixJS()


" Key mapping
" -----------------------------------------------------------------------------
nnoremap j gj
nnoremap k gk
nnoremap ; :
inoremap jj <ESC>
inoremap jk <Esc>

" Move between splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Block movement
nmap <tab> %
vmap <tab> %

" Insert/append a single character
nmap ,, i_<esc>r
nmap ;; a_<esc>r

" Clear the search highlight
map <silent> \ :silent nohlsearch<cr>

" <F1> toggles fullscreen in gui
map <F2> :NERDTreeToggle<cr>
nnoremap <silent> <F3> :TlistToggle<cr>
nnoremap <silent> <F4> :YRShow<cr>
ino <silent> <F5> <c-r>=ShowAvailableSnips()<cr>
" <F9>-<F12> is reserved for .vimrc.local

" Visually select the text that was last edited/pasted
nmap gV `[v`]

" Bubble single lines (requires unimpaired.vim)
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines (requires unimpaired.vim)
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Leader mapping
" -----------------------------------------------------------------------------
map <leader>a :Ack

" Toggle wrapping in the current buffer
nmap <silent> <leader>wt :set wrap!<cr>

" Edit .vimrc and .vimrc.local
nmap <leader>evm <C-w><C-v><C-l>:e $MYVIMRC<cr>
nmap <leader>evl <C-w><C-v><C-l>:e ~/.vimrc.local<cr>

" Collapse all multi-line occurrences of whitespace into one line
map <leader>CN :%s/^\n\+/\r//<cr>:let @/=''<cr>

" Clean whitespace
map <leader>CW :%s/\s\+$//<cr>:let @/=''<cr>

" Retab My Authority.
map <silent><leader>CT :retab<cr>

" Open current buffer in a new split
map <leader>s <C-w>v<C-w>l

" Toggle spelling hints
nmap <silent> <leader>ts :set spell!<cr>

" Reload ctags
map <leader>rt :!ctags --extra=+f -R *<cr><cr>

" Git bindings
map <leader>gs :Gstatus<cr>

" Opens an edit command with the path of the currently edited file filled in
map <leader>e :e <C-R>=expand("%:p:h") . "/" <cr>

" Inserts the path of the currently edited file into a command - Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Closes the window showing the location list from sytastic errors
map <silent><leader>lc :lcl<cr>


" File type utility settings
" -----------------------------------------------------------------------------

" Turn wrapping on for text based languages (markdown, txt...)
function! s:setWrapping()
  setlocal wrap linebreak nolist spell
endfunction

" Enable browser refreshing on web languages
function! s:setBrowserEnv()
  if has('mac')
    map <buffer> <silent><leader>r :RRB<cr>
  endif
endfunction

" Sort CSS selectors and allow for browser refresh
function! s:setCSS()
  call s:setBrowserEnv()
endfunction

" Setup specific options for markdown
function! s:setMarkdown()
  call s:setWrapping()
  call s:setBrowserEnv()
  au! BufWritePost *.md,*.markdown,*.mkd :MDP
endfunction

" Commands for vim-rails
function! s:setRails()
  map <buffer> <leader>rc :Rcontroller
  map <buffer> <leader>vc :RVcontroller
  map <buffer> <leader>sc :RScontroller
  map <buffer> <leader>vf :RVfunctional
  map <buffer> <leader>sf :RSfunctional
  map <buffer> <leader>m :Rmodel
  map <buffer> <leader>vm :RVmodel
  map <buffer> <leader>sm :RSmodel
  map <buffer> <leader>u :Runittest
  map <buffer> <leader>vu :RVunittest
  map <buffer> <leader>su :RSunittest
  map <buffer> <leader>vv :RVview
  map <buffer> <leader>sv :RSview
  map <buffer> <leader>A  :A<cr>
  map <buffer> <leader>av :AV<cr>
  map <buffer> <leader>as :AS<cr>
  map <buffer> <leader>aa :R<cr>
endfunction


" File handling and settings
" -----------------------------------------------------------------------------

if !exists("autocommands_loaded")
  let autocommands_loaded = 1

  " Reload .vimrc after it or vimrc.local been saved
  au! BufWritePost .vimrc source %
  au! BufWritePost .vimrc.local source ~/.vimrc

  " File type settings on load
  au BufRead,BufNewFile *.scss set filetype=scss
  au BufRead,BufNewFile *.m*down set filetype=markdown
  au BufRead,BufNewFile *.as set filetype=actionscript
  au BufRead,BufNewFile *.json set filetype=json

  " Call the file type utility methods
  au BufRead,BufNewFile *.txt call s:setWrapping()
  au BufRead,BufNewFile *.md,*.markdown,*.mkd call s:setMarkdown()
  au BufRead,BufNewFile *.css,*.scss call s:setCSS()
  au BufRead,BufNewFile *.html,*.js,*.haml,*.erb call s:setBrowserEnv()
  au User Rails call s:setRails()

  " Reload all snippets when creating new ones.
  au! BufWritePost *.snippets call ReloadAllSnippets()

  " Enable autosave
  au FocusLost * :wa

  " Enable omnicomplete for supported filetypes
  autocmd FileType * if exists("+completefunc") && &completefunc == "" | setlocal completefunc=syntaxcomplete#Complete | endif
  autocmd FileType * if exists("+omnifunc") && &omnifunc == "" | setlocal omnifunc=syntaxcomplete#Complete | endif

endif



" Themes and GUI settings
" -----------------------------------------------------------------------------
if $TERM == 'xterm-color' && &t_Co == 8
  set t_Co=16
endif

syntax on
set background=dark
colorscheme colorblind


" GUI specific settings (could be in .gvimrc)
" -----------------------------------------------------------------------------
if has('gui_running')
  set guifont=Menlo:h12
  set go-=T
  set go-=l
  set go-=L
  set go-=r
  set go-=R
  if has('gui_macvim')
    macmenu &File.New\ Tab key=<nop>
    set fuoptions=maxhorz,maxvert
    set cursorline
    inoremap <F1> <ESC>:set invfullscreen<CR>
    nnoremap <F1> :set invfullscreen<CR>
    vnoremap <F1> :set invfullscreen<CR>
    vmap <D-]> >gv
    vmap <D-[> <gv
  end
endif

" Set the title bar to something meaningful
if has('title') && (has('gui_running') || &title)
  set titlestring=
  set titlestring+=%f\                                             " file name
  set titlestring+=%h%m%r%w                                        " flags
  set titlestring+=\ -\ %{v:progname}                              " program name
  set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')} " working directory
endif


" !- See the statusline plugin for status line settings...

" Load up the user's local .vimrc config
" -----------------------------------------------------------------------------
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

set nocompatible

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'derekwyatt/vim-fswitch'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fisadev/vim-ctrlp-cmdpalette'
Plugin 'tpope/vim-endwise'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'tpope/vim-fugitive'
Plugin 'henrik/vim-indexed-search'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/vim-slumlord'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/vim-orgymode'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-ragtag'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mbbill/undotree'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/MatchTagAlways'
Plugin 'EinfachToll/DidYouMean'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'AndrewRadev/sideways.vim'
Plugin 'janko-m/vim-test'
Plugin 'jgdavey/tslime.vim'
Plugin 'machakann/vim-highlightedyank'
Plugin 'FooSoft/vim-argwrap'
Plugin 'sheerun/vim-polyglot'
Plugin 'dkarter/bullets.vim'

"colours
Plugin 'morhetz/gruvbox'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'flazz/vim-colorschemes'
call vundle#end()

"not sure why this is getting unset by vundle
set rtp+=~/.vim

set rtp+=~/code/vim-colon-therapy

runtime macros/matchit.vim

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set number      "show line numbers

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
if has("nvim")
    set inccommand=nosplit
endif

set wrap        "dont wrap lines
set linebreak   "wrap lines at convenient points

if v:version >= 703
    "undo settings
    set undodir=~/.vim/undofiles
    set undofile

    set colorcolumn=+1 "mark the ideal max text width
endif

set directory=~/.vim/swapfiles//

"default indent settings
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
set foldtext=MyFoldText()
set fillchars=vert:\|

function! MyFoldText()
    let DeepestAssumedFoldLvl = 5

    let line = getline(v:foldstart)
    let align = repeat(" ", DeepestAssumedFoldLvl - strlen(v:folddashes))
    let rhs = " " . (v:foldend - v:foldstart) . " lines" . align . v:folddashes
    let spacer = repeat(' ', (winwidth(".") - len(line) - len(rhs) - 10))

    return line . spacer . rhs
endfunction

"This is mostly for airline - this was causing lag when moving the cursor
"between windows
set lazyredraw

set wildmode=list:longest,full   "make cmdline tab completion similar to bash
set wildmenu                     "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~      "stuff to ignore when tab completing

set formatoptions-=o "dont continue comments when pushing /O

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"dont show epic message for swapfiles (most of these are bogus for me).
"Use :recover when we actually need to recover from swapfile
set shortmess+=A

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
if !has("nvim")
    set ttymouse=xterm2
endif

set termguicolors
"set background=dark
"colorscheme gruvbox
"hi Normal guibg=NONE ctermbg=NONE
"hi EndOfBuffer guibg=NONE ctermbg=NONE
"hi SpellBad ctermbg=NONE ctermfg=167 cterm=underline
let g:afterglow_inherit_background=1
color afterglow

"hide buffers when not displayed
set hidden

iabbrev teh the

set ignorecase
set smartcase

if filereadable('/usr/share/dict/words')
    set dictionary=/usr/share/dict/words
endif

"statusline setup
set statusline=%{expand('%:.')}
set statusline+=\ "whitespace

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

"read only flag
set statusline+=%#identifier#
set statusline+=%r
set statusline+=%*

"modified flag
set statusline+=%#warningmsg#
set statusline+=%m
set statusline+=%*

"display a warning if &et is wrong, or we have mixed-indenting
set statusline+=%#error#
set statusline+=%{StatuslineTabWarning()}
set statusline+=%*

set statusline+=%#error#
set statusline+=%{StatuslineTrailingSpaceWarning()}
set statusline+=%*

set statusline+=%{StatuslineLongLineWarning()}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

"recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"return '[\s]' if trailing white space is detected
"return '' otherwise
function! StatuslineTrailingSpaceWarning()
    if !exists("b:statusline_trailing_space_warning")

        if !&modifiable
            let b:statusline_trailing_space_warning = ''
            return b:statusline_trailing_space_warning
        endif

        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction

"return the syntax highlight group under the cursor ''
function! StatuslineCurrentHighlight()
    if !exists('g:statusline_show_current_highlight')
        return ''
    endif

    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction

"recalculate the tab warning flag when idle and after writing
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

"return '[&et]' if &et is set wrong
"return '[mixed-indenting]' if spaces and tabs are used to indent
"return an empty string if everything is fine
function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let b:statusline_tab_warning = ''

        if !&modifiable
            return b:statusline_tab_warning
        endif

        let tabs = search('^\t', 'nw') != 0

        "find spaces that arent used as alignment in the first indent column
        let spaces = search('^ \{' . &ts . ',}[^\t]', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning =  '[mixed-indenting]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[&et]'
        endif
    endif
    return b:statusline_tab_warning
endfunction

"recalculate the long line warning when idle and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning

"return a warning for "long lines" where "long" is either &textwidth or 80 (if
"no &textwidth is set)
"
"return '' if no long lines
"return '[#x,my,$z] if long lines are found, were x is the number of long
"lines, y is the median length of the long lines and z is the length of the
"longest line
function! StatuslineLongLineWarning()
    if !exists("b:statusline_long_line_warning")

        if !&modifiable
            let b:statusline_long_line_warning = ''
            return b:statusline_long_line_warning
        endif

        let long_line_lens = s:LongLines()

        if len(long_line_lens) > 0
            let b:statusline_long_line_warning = "[" .
                        \ '#' . len(long_line_lens) . "," .
                        \ 'm' . s:Median(long_line_lens) . "," .
                        \ '$' . max(long_line_lens) . "]"
        else
            let b:statusline_long_line_warning = ""
        endif
    endif
    return b:statusline_long_line_warning
endfunction

"return a list containing the lengths of the long lines in this buffer
function! s:LongLines()
    let threshold = (&tw ? &tw : 80)
    let spaces = repeat(" ", &ts)
    let line_lens = map(getline(1,'$'), 'len(substitute(v:val, "\\t", spaces, "g"))')
    return filter(line_lens, 'v:val > threshold')
endfunction

"find the median of the given array of numbers
function! s:Median(nums)
    let nums = sort(a:nums)
    let l = len(nums)

    if l % 2 == 1
        let i = (l-1) / 2
        return nums[i]
    else
        return (nums[l/2] + nums[(l/2)-1]) / 2
    endif
endfunction

"fswitch settings
command! -nargs=0 A FSHere
command! -nargs=0 AS FSSplitAbove
command! -nargs=0 AV FSSplitLeft

"sideways conf - for swapping arguments around
nnoremap <leader>sh :SidewaysLeft<cr>
nnoremap <leader>sl :SidewaysRight<cr>

"text objects for function args
omap aa <Plug>SidewaysArgumentTextobjA
xmap aa <Plug>SidewaysArgumentTextobjA
omap ia <Plug>SidewaysArgumentTextobjI
xmap ia <Plug>SidewaysArgumentTextobjI

"csv settings
let g:csv_nomap_space=1

"plantuml conf
let g:plantuml_executable_script = "$HOME/.vim/plantuml/uml.sh"

"use space as leader in sensible modes
nmap <space> <Leader>
vmap <space> <Leader>

"make wrapped lines more intuitive
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

"fix for yankring and neovim
let g:yankring_clipboard_monitor=0

"vim-gist settings
let g:gist_post_private = 1
let g:gist_browser_command = 'sensible-browser %URL%'

"add new words (via zg) here
setlocal spellfile+=~/.vim/spell/en.utf-8.add

"make table-mode tables github-markdown compat
let g:table_mode_corner="|"

map <leader>T <Plug>(table-mode-tableize)

"syntastic settings
let syntastic_stl_format = '[Syntax: %E{line:%fe }%W{#W:%w}%B{ }%E{#E:%e}]'
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["python"] }

"nerdtree settings
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
let g:NERDTreeMinimalUI=1
let g:NERDTreeIgnore=['\~$', '__pycache__']

"tagbar settings
let g:tagbar_sort = 0
if executable('ripper-tags')
    let g:tagbar_type_ruby = {
        \ 'kinds'      : ['m:modules',
                        \ 'c:classes',
                        \ 'C:constants',
                        \ 'F:singleton methods',
                        \ 'f:methods',
                        \ 'a:aliases'],
        \ 'kind2scope' : { 'c' : 'class',
                         \ 'm' : 'class' },
        \ 'scope2kind' : { 'class' : 'c' },
        \ 'ctagsbin'   : 'ripper-tags',
        \ 'ctagsargs'  : ['-f', '-']
        \ }
endif

"vim-test settings
let test#strategy = "tslime"
let g:test#ruby#use_spring_binstub=1
nnoremap <leader>tt :TestNearest<cr>
nnoremap <leader>tf :TestFile<cr>
nnoremap <leader>ta :TestSuite<cr>
nnoremap <leader>tl :TestLast<cr>
nnoremap <leader>tg :TestVisit<cr>

autocmd bufenter,bufnewfile $HOME/code/labforge/tests/*.py call s:setup_labforge_tests()
function! s:setup_labforge_tests() abort
    let g:test#python#nose2#executable="python3 -munittest"
    let g:test#python#runner="Nose2"
endfunction

"explorer mappings
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <leader>nn :e .<cr>
nnoremap <leader>nd :e %:h<cr>
nnoremap <leader>] :TagbarToggle<cr>
nnoremap <leader>f :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>p :CtrlPCmdPalette<cr>
nnoremap <c-f> :CtrlP<cr>
nnoremap <c-b> :CtrlPBuffer<cr>

"command abbrevs we can use `:E<space>` (and similar) to edit a file in the
"same dir as current file
cabbrev E <c-r>="e "  . expand("%:h") . "/"<cr><c-r>=<SID>Eatchar(' ')<cr>
cabbrev Sp <c-r>="sp " . expand("%:h") . "/"<cr><c-r>=<SID>Eatchar(' ')<cr>
cabbrev SP <c-r>="sp " . expand("%:h") . "/"<cr><c-r>=<SID>Eatchar(' ')<cr>
cabbrev Vs <c-r>="vs " . expand("%:h") . "/"<cr><c-r>=<SID>Eatchar(' ')<cr>
cabbrev VS <c-r>="vs " . expand("%:h") . "/"<cr><c-r>=<SID>Eatchar(' ')<cr>
cabbrev R <c-r>="r " . expand("%:h") . "/"<cr><c-r>=<SID>Eatchar(' ')<cr>
function! s:Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

"argwrap settings
nnoremap <leader>w :ArgWrap<cr>

"ultisnips settings
let g:UltiSnipsListSnippets = "<c-s>"
augroup Ultisnips
    autocmd bufenter,bufnewfile */factories/*.rb UltiSnipsAddFiletypes factory_girl
    autocmd bufenter,bufnewfile */app/admin/*.rb,*/app/views/activeadmin/*.{rb,arb},*.erb UltiSnipsAddFiletypes formtastic
augroup END

if has("nvim")
    tnoremap <silent> <Esc> <C-\><C-n>`.$
    tnoremap <A-h> <C-\><C-n><C-w>h
    tnoremap <A-j> <C-\><C-n><C-w>j
    tnoremap <A-k> <C-\><C-n><C-w>k
    tnoremap <A-l> <C-\><C-n><C-w>l
    autocmd BufEnter term://* startinsert
endif

"source project specific config files
runtime! projects/**/*.vim

"dont load csapprox if we no gui support - silences an annoying warning
if !has("gui")
    let g:CSApprox_loaded = 1
endif

"ruby block textobj conf - remap from ar/ir to ab/ib
let g:textobj_rubyblock_no_default_key_mappings = 1
xmap ab  <Plug>(textobj-rubyblock-a)
omap ab  <Plug>(textobj-rubyblock-a)
xmap ib  <Plug>(textobj-rubyblock-i)
omap ib  <Plug>(textobj-rubyblock-i)

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"map Q to something useful
noremap Q gq

"make Y consistent with C and D
nnoremap Y y$

"make & highlight the current word, but not move cursor
nnoremap + :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>:ShowSearchIndex<cr>

"visual search mappings
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>:ShowSearchIndex<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>:ShowSearchIndex<CR>
vnoremap + :<C-u>call <SID>VSetSearch()<CR>:set hls<CR>:ShowSearchIndex<CR>

"indexed search settings
"
"disable defaults, otherwise it blows away the * and # mappings above
let g:indexed_search_mappings=0
nnoremap n n:ShowSearchIndex<cr>
nnoremap N N:ShowSearchIndex<cr>

"gutentags settings
let g:gutentags_ctags_exclude = ['vendor/*', 'tmp/*', 'log/*', 'coverage/*', 'doc/*']
let g:gutentags_generate_on_missing=0
let g:gutentags_generate_on_new=0

"tmux-vim-navigator setup
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <m-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <m-j> :TmuxNavigateDown<cr>
nnoremap <silent> <m-k> :TmuxNavigateUp<cr>
nnoremap <silent> <m-l> :TmuxNavigateRight<cr>
nnoremap <silent> <m-w> :TmuxNavigatePrevious<cr>

"ctrlp settings
let g:ctrlp_custom_ignore = '\(\/vendor\/bundle\|db\/migrate\)'
let g:ctrlp_max_files = 40000
let g:ctrlp_user_command = {
\ 'types': {
  \ 1: ['.git', 'cd %s && git ls-files'],
  \ 2: ['.hg', 'hg --cwd %s locate -I .'],
  \ },
\ 'fallback': 'find %s -type f'
\ }

"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    else
        call cursor(1,1)
    endif
endfunction

"spell check when writing commit logs
autocmd filetype svn,*commit* setlocal spell

"http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
"hacks from above (the url, not jesus) to delete fugitive buffers when we
"leave them - otherwise the buffer list gets poluted
"
"add a mapping on .. to view parent tree
autocmd BufReadPost fugitive://* set bufhidden=delete
autocmd BufReadPost fugitive://*
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif


"ruby settings
let g:ruby_indent_access_modifier_style = 'normal'

"markdown settings
let g:markdown_fenced_languages = ['ruby', 'json', 'python']

" these things are handled by bullets.vim
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

let g:bullets_outline_levels = ['ROM', 'ABC', 'num', 'abc', 'rom', 'std*', 'std-']

"add :Efactory and Eadmin etc for rails
let g:rails_projections = {
    \ "spec/factories/*.rb": {
    \   "command": "factory",
    \   "template":
    \     ["FactoryGirl.define do", "  factory :{} do", "  end", "end"]
    \ },
    \ "app/admin/*.rb": {
    \   "command": "admin",
    \   "template":
    \     ["ActiveAdmin.register {camelcase|singular|capitalize} do", "end"],
    \ },
    \ "app/graphql/resolvers/*.rb": {
    \   "command": "resolver"
    \ },
    \ "app/graphql/inputs/*.rb": {
    \   "command": "input"
    \ },
    \ "app/graphql/types/*.rb": {
    \   "command": "type"
    \ },
    \ "app/graphql/mutations/*.rb": {
    \   "command": "mutation"
    \ },
    \ "app/controllers/api/v5/*.rb": {
    \   "command": "api"
    \ }}

"activate rainbow parens for clojure
autocmd syntax clojure call s:ActivateRainbowParens()
function! s:ActivateRainbowParens() abort
    RainbowParenthesesToggle
    RainbowParenthesesLoadRound
    RainbowParenthesesLoadSquare
    RainbowParenthesesLoadBraces
endfunction

nnoremap <F12> :NotesToggle<cr>
command! -nargs=0 NotesToggle call <sid>toggleNotes()
function! s:toggleNotes() abort
    botright silent 90vs ~/notes
    setl wfw

    "hack to make nerdtree et al not split the window
    silent! setl previewwindow

    "for some reason this doesnt get run automatically and the cursor
    "position doesn't get set
    doautocmd bufreadpost %
endfunction

"command to filter :scriptnames output by a regex
command! -nargs=1 Scriptnames call <sid>scriptnames(<f-args>)
function! s:scriptnames(re) abort
    redir => scriptnames
        silent scriptnames
    redir END

    let filtered = filter(split(scriptnames, "\n"), "v:val =~ '" . a:re . "'")
    echo join(filtered, "\n")
endfunction

" set the arglist to all conflicting files in the current repo
command! GitLoadConflicts call s:loadGitConfictsIntoArglist()
function! s:loadGitConfictsIntoArglist() abort
    silent! argdel *
    let conflicted_files = system('git diff --name-only --diff-filter=U | tr "\n" " "')
    exec 'argadd ' . conflicted_files
    rewind
    call search('=======')
    echomsg "Use <leader>gn to Gwrite and go to next conflict"
endfunction

nnoremap <leader>gn :Gwrite \| next \| call search('=======')<cr>

" I typo this enough to be worthwhile aliasing it
command! W :write

" Decode the big blobs of base64 encoded saml that we get in the logs
" Install xmllint on ubuntu with: apt-get install libxml2-utils
nnoremap <leader>sd "+p:SamlDecode<cr>
command! SamlDecode :call s:SamlDecode()
function! s:SamlDecode() abort
    %!base64 -d
    %!xmllint --format -
    setf xml
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Amir Salihefendic — @amix3k
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" Add a bit extra margin to the left
set foldcolumn=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
" Modeline and Notes {
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
"
"	This is the personal .vimrc file of Steve Francia.
"	While much of it is beneficial for general use, I would
"	recommend picking out the parts you want and understand.
"
"	You can find me at http://spf13.com
" }

" Environment {
	" Basics {
		set nocompatible 		" must be first line
		set background=dark     " Assume a dark background
	" }

	" Windows Compatible {
		" On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
		" across (heterogeneous) systems easier. 
		if has('win32') || has('win64')
		  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
		endif
	" }
    " 
	" Setup Bundle Support {
	" The next two lines ensure that the ~/.vim/bundle/ system works
		runtime! autoload/pathogen.vim
		silent! call pathogen#helptags()
		silent! call pathogen#runtime_append_all_bundles()
	" }

" }

" General {
	set background=dark         " Assume a dark background
    if !has('win32') && !has('win64')
        set term=$TERM       " Make arrow and other keys work
    endif
	filetype plugin indent on  	" Automatically detect file types.
	syntax on 					" syntax highlighting
	set mouse=a					" automatically enable mouse usage
	"set autochdir 				" always switch to the current file directory.. Messes with some plugins, best left commented out
	" not every vim is compiled with this, use the following line instead
	" If you use command-t plugin, it conflicts with this, comment it out.
     "autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
	scriptencoding utf-8

	" set autowrite                  " automatically write a file when leaving a modified buffer
	set shortmess+=filmnrxoOtT     	" abbrev. of messages (avoids 'hit enter')
	set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
	set virtualedit=onemore 	   	" allow for cursor beyond last character
	set history=1000  				" Store a ton of history (default is 20)
	set spell 		 	        	" spell checking on
	
	" Setting up the directories {
		set backup 						" backups are nice ...
		set undofile					" so is persistent undo ...
		set undolevels=1000 "maximum number of changes that can be undone
		set undoreload=10000 "maximum number lines to save for undo on a buffer reload
        " Moved to function at bottom of the file
		"set backupdir=$HOME/.vimbackup//  " but not when they clog .
		"set directory=$HOME/.vimswap// 	" Same for swap files
		"set viewdir=$HOME/.vimviews// 	" same for view files
		
		"" Creating directories if they don't exist
		"silent execute '!mkdir -p $HVOME/.vimbackup'
		"silent execute '!mkdir -p $HOME/.vimswap'
		"silent execute '!mkdir -p $HOME/.vimviews'
		au BufWinLeave * silent! mkview  "make vim save view (state) (folds, cursor, etc)
		au BufWinEnter * silent! loadview "make vim load view (state) (folds, cursor, etc)
	" }
" }

" Vim UI {
	color solarized   	       		" load a colorscheme
	set tabpagemax=15 				" only show 15 tabs
	set showmode                   	" display the current mode

	set cursorline  				" highlight current line
	hi cursorline guibg=#333333 	" highlight bg color of current line
	hi CursorColumn guibg=#333333   " highlight cursor

	if has('cmdline_info')
		set ruler                  	" show the ruler
		set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
		set showcmd                	" show partial commands in status line and
									" selected characters/lines in visual mode
	endif

	if has('statusline')
        set laststatus=2

		" Broken down into easily includeable segments
		set statusline=%<%f\    " Filename
		set statusline+=%w%h%m%r " Options
		set statusline+=%{fugitive#statusline()} "  Git Hotness
		set statusline+=\ [%{&ff}/%Y]            " filetype
		set statusline+=\ [%{getcwd()}]          " current dir
		"set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
		set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
	endif

	set backspace=indent,eol,start	" backspace for dummys
	set linespace=0					" No extra spaces between rows
	set nu							" Line numbers on
	set showmatch					" show matching brackets/parenthesis
	set incsearch					" find as you type search
	set hlsearch					" highlight search terms
	set winminheight=0				" windows can be 0 line high 
	set ignorecase					" case insensitive search
	set smartcase					" case sensitive when uc present
	set wildmenu					" show list instead of just completing
	set wildmode=list:longest,full	" command <Tab> completion, list matches, then longest common part, then all.
	set whichwrap=b,s,h,l,<,>,[,]	" backspace and cursor keys wrap to
	set scrolljump=5 				" lines to scroll when cursor leaves screen
	set scrolloff=3 				" minimum lines to keep above and below cursor
	set foldenable  				" auto fold code
	set gdefault					" the /g flag on :s substitutions by default
    set list
    set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace


" }

" Formatting {
	set nowrap                     	" wrap long lines
	set autoindent                 	" indent at the same level of the previous line
	set shiftwidth=4               	" use indents of 4 spaces
	set expandtab 	  	     		" tabs are spaces, not tabs
	set tabstop=4 					" an indentation every four columns
	set softtabstop=4 				" let backspace delete indent
	"set matchpairs+=<:>            	" match, to be used with % 
	set pastetoggle=<F12>          	" pastetoggle (sane indentation on pastes)
	"set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
	" Remove trailing whitespaces and ^M chars
	autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
" }

" Key (re)Mappings {

	"The default leader is '\', but many people prefer ',' as it's in a standard
	"location
	let mapleader = ','

    " Making it so ; works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift.
    nnoremap ; :


	" Easier moving in tabs and windows
	map <C-J> <C-W>j<C-W>_
	map <C-K> <C-W>k<C-W>_
	map <C-L> <C-W>l<C-W>_
	map <C-H> <C-W>h<C-W>_
	
    " Wrapped lines goes down/up to next row, rather than next line in file.
    nnoremap j gj
    nnoremap k gk

	" The following two lines conflict with moving to top and bottom of the
	" screen
	" If you prefer that functionality, comment them out.
	map <S-H> gT          
	map <S-L> gt

	" Stupid shift key fixes
	cmap W w 						
	cmap WQ wq
	cmap wQ wq
	cmap Q q
	cmap Tabe tabe

	" Yank from the cursor to the end of the line, to be consistent with C and D.
	nnoremap Y y$
		
	""" Code folding options
	nmap <leader>f0 :set foldlevel=0<CR>
	nmap <leader>f1 :set foldlevel=1<CR>
	nmap <leader>f2 :set foldlevel=2<CR>
	nmap <leader>f3 :set foldlevel=3<CR>
	nmap <leader>f4 :set foldlevel=4<CR>
	nmap <leader>f5 :set foldlevel=5<CR>
	nmap <leader>f6 :set foldlevel=6<CR>
	nmap <leader>f7 :set foldlevel=7<CR>
	nmap <leader>f8 :set foldlevel=8<CR>
	nmap <leader>f9 :set foldlevel=9<CR>

    "clearing highlighted search
    nmap <silent> <leader>/ :nohlsearch<CR>

	" Shortcuts
	" Change Working Directory to that of the current file
    cmap cwd lcd %:p:h
	cmap cd. lcd %:p:h

	" visual shifting (does not exit Visual mode)
	vnoremap < <gv
	vnoremap > >gv 

	" Fix home and end keybindings for screen, particularly on mac
	" - for some reason this fixes the arrow keys too. huh.
	map [F $
	imap [F $
	map [H g0
	imap [H g0
		
	" For when you forget to sudo.. Really Write the file.
	cmap w!! w !sudo tee % >/dev/null
" }

" Plugins {

	" VCSCommand {
"		let b:VCSCommandMapPrefix=',v'
"		let b:VCSCommandVCSType='git'
	" } 
	
	" PIV {
		let g:DisableAutoPHPFolding = 0
		"let cfu=phpcomplete#CompletePHP
	" }
	
	" Supertab {
		let g:SuperTabDefaultCompletionType = "context"
		let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
	" }

	" Misc { 
		:map <C-F10> <Esc>:vsp<CR>:VTree<CR>
		" map Control + F10 to Vtree

        noremap <leader><F5> :CheckSyntax<cr>
		let g:checksyntax_auto = 1

		"comment out line(s) in visual mode -RB: If you do this, you can't
        "switch sides of the comment block in visual mode.
		"vmap  o  :call NERDComment(1, 'toggle')<CR>
		let g:NERDShutUp=1

		let b:match_ignorecase = 1
	" }
	
	" ShowMarks {
		let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
		" Don't leave on by default, use :ShowMarksOn to enable
		let g:showmarks_enable = 0
		" For marks a-z
		highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
		" For marks A-Z
		highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
		" For all other marks
		highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
		" For multiple marks on the same line.
		highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen
	" }
	
	" Command-t {
        let g:CommandTSearchPath = $HOME . '/Code'
	" }

	" OmniComplete {
		"if has("autocmd") && exists("+omnifunc")
			"autocmd Filetype *
				"\if &omnifunc == "" |
				"\setlocal omnifunc=syntaxcomplete#Complete |
				"\endif
		"endif

		" Popup menu hightLight Group
		"highlight Pmenu	ctermbg=13	guibg=DarkBlue
        "highlight PmenuSel	ctermbg=7	guibg=DarkBlue		guifg=LightBlue
		"highlight PmenuSbar ctermbg=7	guibg=DarkGray
		"highlight PmenuThumb			guibg=Black

		hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
		hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
		hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

		" some convenient mappings 
		inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
		inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
		inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
		inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
		inoremap <expr> <C-d>	   pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
		inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"

        " and make sure that it doesn't break supertab
        let g:SuperTabCrMapping = 0
        
		" automatically open and close the popup menu / preview window
		au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
		set completeopt=menu,preview,longest
	" }
	
	" Ctags {
    " This will look in the current directory for 'tags', and work up the tree towards root until one is found. 
		set tags=./tags;/,$HOME/vimtags
        map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR> " C-\ - Open the definition in a new tab
        map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>      " A-] - Open the definition in a vertical split
	" }

	" EasyTags {
       " Disabling for now. It doesn't work well on large tag files 
        let g:loaded_easytags = 1  " Disable until it's working better
		let g:easytags_cmd = 'ctags'
        let g:easytags_dynamic_files = 1
		if !has('win32') && !has('win64')
            let g:easytags_resolve_links = 1
        endif
	" }

	" Delimitmate {
		au FileType * let b:delimitMate_autoclose = 1

		" If using html auto complete (complete closing tag)
        au FileType xml,html,xhtml let b:delimitMate_matchpairs = "(:),[:],{:}"
	" }
	
	" AutoCloseTag {
		" Make it so AutoCloseTag works for xml and xhtml files as well
		au FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
	" }

	" SnipMate {
		" Setting the author var
        " If forking, please overwrite in your .vimrc.local file
		let g:snips_author = 'Steve Francia <steve.francia@gmail.com>'
		" Shortcut for reloading snippets, useful when developing
		nnoremap ,smr <esc>:exec ReloadAllSnippets()<cr>
	" }

	" NerdTree {
		map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
		map <leader>e :NERDTreeFind<CR>
		nmap <leader>nt :NERDTreeFind<CR>

		let NERDTreeShowBookmarks=1
		let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
		let NERDTreeChDirMode=0
		let NERDTreeQuitOnOpen=1
		let NERDTreeShowHidden=1
		let NERDTreeKeepTreeInNewTab=1
	" }
    
    " Tabularize {
        if exists(":Tabularize")
          nmap <Leader>a= :Tabularize /=<CR>
          vmap <Leader>a= :Tabularize /=<CR>
          nmap <Leader>a: :Tabularize /:<CR>
          vmap <Leader>a: :Tabularize /:<CR>
          nmap <Leader>a:: :Tabularize /:\zs<CR>
          vmap <Leader>a:: :Tabularize /:\zs<CR>
          nmap <Leader>a, :Tabularize /,<CR>
          vmap <Leader>a, :Tabularize /,<CR>
          nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
          vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
        endif
     " }


	" Richard's plugins {
		" Fuzzy Finder {
			""" Fuzzy Find file, tree, buffer, line
			nmap <leader>ff :FufFile **/<CR>
			nmap <leader>ft :FufFile<CR>
			nmap <leader>fb :FufBuffer<CR>
			nmap <leader>fl :FufLine<CR>
			nmap <leader>fr :FufRenewCache<CR>
		" }

		" Session List {
			set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
			nmap <leader>sl :SessionList<CR>
			nmap <leader>ss :SessionSave<CR>
		" }
		
		" Buffer explorer {
			nmap <leader>b :BufExplorer<CR>
		" }
		
		" VCS commands {
			nmap <leader>vs :VCSStatus<CR>
			nmap <leader>vc :VCSCommit<CR>
			nmap <leader>vb :VCSBlame<CR>
			nmap <leader>va :VCSAdd<CR>
			nmap <leader>vd :VCSVimDiff<CR>
			nmap <leader>vl :VCSLog<CR>
			nmap <leader>vu :VCSUpdate<CR>
		" }
		" php-doc commands {
			nmap <leader>pd :call PhpDocSingle()<CR>
			vmap <leader>pd :call PhpDocRange()<CR>
		" }
		
		" Debugging with VimDebugger {
			map <F11> :DbgStepInto<CR>
			map <F10> :DbgStepOver<CR>
			map <S-F11> :DbgStepOut<CR>
			map <F5> :DbgRun<CR>
			map <F6> :DbgDetach<CR>
			map <F8> :DbgToggleBreakpoint<CR>
			map <S-F8> :DbgFlushBreakpoints<CR>
			map <F9> :DbgRefreshWatch<CR>
			map <S-F9> :DbgAddWatch<CR>
		" }

		" Taglist Variables {
			let Tlist_Auto_Highlight_Tag = 1
			let Tlist_Auto_Update = 1
			let Tlist_Exit_OnlyWindow = 1
			let Tlist_File_Fold_Auto_Close = 1
			let Tlist_Highlight_Tag_On_BufEnter = 1
			let Tlist_Use_Right_Window = 1
			let Tlist_Use_SingleClick = 1

			let g:ctags_statusline=1
			" Override how taglist does javascript
			let g:tlist_javascript_settings = 'javascript;f:function;c:class;m:method;p:property;v:global'
		 " }

		" JSON {
			nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>
		 " }
	" }
" }

" GUI Settings {
	" GVIM- (here instead of .gvimrc)
	if has('gui_running')
		set guioptions-=T          	" remove the toolbar
		set lines=40               	" 40 lines of text instead of 24,
	else
		set term=builtin_ansi       " Make arrow and other keys work
	endif
" }

function! InitializeDirectories()
  let separator = "."
  let parent = $HOME 
  let prefix = '.vim'
  let dir_list = { 
			  \ 'backup': 'backupdir', 
			  \ 'views': 'viewdir', 
			  \ 'swap': 'directory', 
			  \ 'undo': 'undodir' }

  for [dirname, settingname] in items(dir_list)
	  let directory = parent . '/' . prefix . dirname . "/"
	  if exists("*mkdir")
		  if !isdirectory(directory)
			  call mkdir(directory)
		  endif
	  endif
	  if !isdirectory(directory)
		  echo "Warning: Unable to create backup directory: " . directory
		  echo "Try: mkdir -p " . directory
	  else  
          let directory = substitute(directory, " ", "\\\\ ", "")
          exec "set " . settingname . "=" . directory
	  endif
  endfor
endfunction
call InitializeDirectories() 

function! NERDTreeInitAsNeeded()
    redir => bufoutput
    buffers!
    redir END
    let idx = stridx(bufoutput, "NERD_tree")
    if idx > -1
        NERDTreeMirror
        NERDTreeFind
        wincmd l
    endif
endfunction

" Use local vimrc if available {
    if filereadable(expand("~/.vimrc.local"))
        source ~/.vimrc.local
    endif
" }

map ; :
noremap ;; ;
nnoremap <CR> :noh<CR>
set hlsearch "Highlights search terms"
set incsearch "Highlights search terms as you type them"
set showmatch "Highlights matching parentheses"
set ignorecase "Ignores case when searching"
set smartcase "Unless you put some caps in your search term"
nnoremap <leader>; ;
map ; :
au BufNewFile,BufRead *.js,*.jsx*,*.rb,*.html,*.xml :setlocal sw=2 ts=2 sts=2
au FileType make setlocal noexpandtab

set tabstop=4 "Sets indent size of tabs"
set softtabstop=4 "Soft tabs"
set expandtab "Turns tabs into spaces"
set shiftwidth=4 "Sets auto-indent size"
set autoindent "Turns on auto-indenting"
set copyindent "Copy the previous indentation on autoindenting"
set smartindent "Remembers previous indent when creating new lines"
set pastetoggle=<leader>p
Alternatively, for some Linux distros, pbcopy can be replaced with xclip -i -sel c or xsel -i -b and pbpaste with xclip -o -sel -c or xsel -o -b.

let @p = ':r !pbpaste'
" Copies the currently selected text to the system clipboard (OSX)
let @c = ':w !pbcopy'
" Allow crosshair cursor highlighting.
hi CursorLine   cterm=NONE ctermbg=0
hi CursorColumn cterm=NONE ctermbg=0
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
   hi Search ctermfg=Black ctermbg=Yellow cterm=Bold

nmap <leader>E :exec 'r!'.getline('.')<CR>
nmap <leader>E yyp:.!csh<CR>
!!bash<cr>
nmap <F6> :exec '!'.getline('.')
nmap <F6> :exec '!'.getline('.')
:.w !bash
command W w !sudo tee % >/dev/null
https://github.com/chrisbra/SudoEdit.vim
cnoremap w!! w !sudo tee > /dev/null %
cmap w!! w !sudo tee > /dev/null %
:w !sudo tee %

Skip to content
CatsWhoCode Logo

    Web Hosting
        Best WordPress Hosting
            Kinsta
            Cloudways
            Liquid Web
        Cheap Web Hosting
        Web Hosting For Developers
    Web Development
        How to Become a Web Developer
        How to Make a Responsive Website
        Elementor Review
        Divi Review
        Vim Commands
        Vim Cheat Sheet
        Python Modules List
    Blog
    About
    Search 

130+ Essential Vim Commands

Since the 1970’s, Vi and its successor Vim have been included by default on many operating systems, including almost all GNU/Linux distributions.

Vim is free and open-source and is one of the most popular code editors. It can be downloaded on Vim official site.
Table of Contents show

Vim is a modal text editor, which means that it has a mode for writing text, a mode for running commands, etc.

Vim has a total of 12 different editing modes.

The three main modes are:

    Command mode (also sometimes reffered to as Normal mode) is where you can run commands. This is the default mode in which Vim starts up.
    Insert mode is the mode where you insert/write your text.
    Visual mode is where you visually select a bunch of text so that you can run a command/operation only on that part of the text.

Basic Vim Commands

Let’s start with an easy set of Vim commands to open, save, and exit Vim.
:e filename	Open filename for edition
:w	Save file
:q	Exit Vim
:q!	Quit without saving
:x	Write file (if changes has been made) and exit
:sav filename	Saves file as filename
.	Repeats the last change made in normal mode
Moving in the File

While in command mode, the following set of commands will allow you to easily move the cursor in the file, jump to a particular line number, or set the cursor position at the beginning of the file.
k or Up Arrow	move the cursor position up one line
j or Down Arrow	move the cursor down one line
e	move the cursor to the end of the word
b	move the cursor to the begining of the word
0	move the cursor to the begining of the line
G	move the cursor to the end of the file
gg	move the cursor to the begining of the file
L	move the cursor to the bottom of the screen
:59	move cursor to line number 59. Replace 59 by the desired line number.
%	Move cursor to matching parenthesis
[[	Jump to function start
[{	Jump to block start
Cut, Copy & Paste

Here are some basic Vim commands to cut, copy and paste portions of text. All the commands below has to be ran in command mode.
y	Copy the selected text to clipboard
p	Paste clipboard contents
dd	Cut current line
yy	Copy current line
y$	Copy to end of line
D	Cut to end of line
Search

In command mode, you can easily search for any string within a file. This is extremely useful for developers and sysadmins alike.
/word	Search word from top to bottom
?word	Search word from bottom to top
*	Search the word under cursor
/\cstring	Search STRING or string, case insensitive
/jo[ha]n	Search john or joan
/\< the	Search the, theatre or then
/the\>	Search the or breathe
/fred\|joe	Search fred or joe
/\<\d\d\d\d\>	Search exactly 4 digits
/^\n\{3}	Find 3 empty lines
:bufdo /searchstr/	Search in all open files
bufdo %s/something/somethingelse/g	Search something in all the open buffers and replace it with somethingelse
Replace

Vim command line tool is extremely useful to replace many occurences of a string by another within a file. Using more advanced commands, there are a lot of search and replace options available.
:%s/old/new/g	Replace all occurences of old by new in file
:%s/onward/forward/gi	Replace onward by forward, case unsensitive
:%s/old/new/gc	Replace all occurences with confirmation
:%s/^/hello/g	Replace the begining of each line by hello
:%s/$/Harry/g	Replace the end of each line by Harry
:%s/onward/forward/gi	Replace onward by forward, case unsensitive
:%s/ *$//g	Delete all white spaces
:g/string/d	Delete all lines containing string
:v/string/d	Delete all lines containing which didn’t contain string
:s/Bill/Steve/	Replace the first occurence of Bill by Steve in current line
:s/Bill/Steve/g	Replace Bill by Steve in current line
:%s/Bill/Steve/g	Replace Bill by Steve in all the file
:%s/^M//g	Delete DOS carriage returns (^M)
:%s/\r/\r/g	Transform DOS carriage returns in returns
:%s#<[^>]\+>##g	Delete HTML tags but keeps text
:%s/^\(.*\)\n\1$/\1/	Delete lines which appears twice
Ctrl+a	Increment number under the cursor
Ctrl+x	Decrement number under cursor
ggVGg?	Change text to Rot13
Case

Vim has some powerful commands to modify the case of text. All the commands below have to be run in command mode.
Vu	Lowercase line
VU	Uppercase line
g~~	Invert case
vEU	Switch word to uppercase
vE~	Modify word case
ggguG	Set all text to lowercase
gggUG	Set all text to uppercase
:set ignorecase	Ignore case in searches
:set smartcase	Ignore case in searches excepted if an uppercase letter is used
:%s/\<./\u&/g	Sets first letter of each word to uppercase
:%s/\<./\l&/g	Sets first letter of each word to lowercase
:%s/.*/\u&	Sets first letter of each line to uppercase
:%s/.*/\l&	Sets first letter of each line to lowercase
Read and Write Files

Vim is clearly one of the most powerful text editors available. This section shows how you can manipulate files, insert the content of a file into another, and export portions of a file into a new file.
:1,10 w outfile	Saves lines 1 to 10 in outfile
:1,10 w >> outfile	Appends lines 1 to 10 to outfile
:r infile	Insert the content of infile
:23r infile	Insert the content of infile under line 23
File Explorer

Vim features a built in file explorer, which allows you to explorer the content of your server without exiting the text editor.
:e .	Open integrated file explorer
:Sex	Split window and open integrated file explorer
:Sex!	Same as :Sex but split window vertically
:browse e	Graphical file explorer
:ls	List buffers
:cd ..	Move to parent directory
:args	List files
:args *.php	Open file list
:grep expression *.php	Returns a list of .php files contening expression
gf	Open file name under cursor
Interact With Unix

Vim is installed by default on most Unix based operating systems, including Mac OS and most GNU/Linux distros. It therefore feature various commands that allows you to interact with the OS.
:!pwd	Execute the pwd unix command, then returns to Vi
!!pwd	Execute the pwd unix command and insert output in file
:sh	Temporary returns to Unix
$exit	Retourns to Vi
Alignment

In command mode, you can quickly and easily align a file’s lines for better clarity.
:%!fmt	Align all lines
!}fmt	Align all lines at the current position
5!!fmt	Align the next 5 lines
Tabs and Windows

One of my favorite Vim options is the ability to use tabs to edit various files at the same time. The following Vim commands will let you open, close, and organize your tabs for better productivity.
:tabnew	Creates a new tab
gt	Show next tab
:tabfirst	Show first tab
:tablast	Show last tab
:tabm n(position)	Rearrange tabs
:tabdo %s/foo/bar/g	Execute a command in all tabs
:tab ball	Puts all open files in tabs
:new abc.txt	Edit abc.txt in new window
Window Spliting

Vim allows you to split the screen horizontally or vertically, so you can edit many files at once using the insert mode.
:e filename	Edit filename in current window
:split filename	Split the window and open filename
ctrl-w up arrow	Puts cursor in top window
ctrl-w ctrl-w	Puts cursor in next window
ctrl-w_	Maximize current window vertically
ctrl-w|	Maximize current window horizontally
ctrl-w=	Gives the same size to all windows
10 ctrl-w+	Add 10 lines to current window
:vsplit file	Split window vertically
:sview file	Same as :split in readonly mode
:hide	Close current window
:­nly	Close all windows, excepted current
:b 2	Open #2 in this window
Auto-Completion

Vim can use external dictionaries to provide auto-completion. This can be a real time saver, so pay attention to the commands below if you want to speed up your workflow.
Ctrl+n Ctrl+p (To be used in insert mode)	Complete word
Ctrl+x Ctrl+l	Complete line
:set dictionary=dict	Define dict as a dictionnary
Ctrl+x Ctrl+k	Complete with dictionnary
Marks

When editing large files, it can be tricky to move in the file and remember important sections. Happilly, Vim allows its users to create marks that can easily be accessed later. No need to remember a dozen of line numbers anymore!
m {a-z}	Marks current position as {a-z}
‘ {a-z}	Move to position {a-z}
”	Move to previous position
Abbreviations

This little known trick lets you define abbreviations that can be reused later and as many times as needed.
:ab mail mail@provider.org	Define mail as abbreviation of mail@provider.org
Text Indentation

Text indentation is vital when it comes to code readability. Luckily, Vim has a set of commands for the text editor to indent your lines in a clear and readable manner.
:set autoindent	Turn on auto-indent
:set smartindent	Turn on intelligent auto-indent
:set shiftwidth=4	Defines 4 spaces as indent size
ctrl-t, ctrl-d	Indent/un-indent in insert mode
>>	Indent
<<	Un-indent
=%	Indent the code between parenthesis
1GVG=	Indent the whole file
Recommended Vim Courses
Learn and Master the Vim Text Editor
Learn Vim from scratch and quickly become more productive.
Enroll Now
Advanced Vim Course
Design, develop, and deploy end-to-end applications with Vim.
Enroll Now
Frequently Asked Questions

Vim basic commands
How do I Type Commands in Vim?

To type commands, you have to first activate Vim’s command mode. To do so, press the Esc key of your keyboard. You can then type any command of your choice.
How do I Start Typing Text in Vim?

Vim must be in insert mode for you to type text. Simply press the i key when in command mode to enter the insert mode.
On Which Hosting Plans Can You Use Vim?

Basically any Linux hosting will have Vim installed on the server. As long as you are able to access your server via SSH, you’ll be able to use Vim. Please refer to our best web hosting for developers guide to find out which hosts provide a SSH access.
Quick Links

    Contact
    Terms of Service
    Privacy Policy
    Disclosure
    Sitemap

Copyright © 2008 - 2022 CatsWhoCode. All rights reserved.

https://github.com/nathanaelkane/vim-indent-guides

Learn shortcuts. Work faster.

    RSS

    Blog
    Archives

Top 50 Vim Configuration Options

Apr 30th, 2016 11:02 am

Few products rival Vim’s flexibility, since it currently supports over 380 configuration options, not including the hundreds of possible key bindings. While the sheer magnitude of choices are overwhelming, here are 50 of the most important configurations you need to know.
Before We Begin

The “vimrc” (Vim resource configuration) file provides initialization settings that configure Vim every time it starts. This file can be found in “$HOME/.vimrc” for Linux/OSX and “$HOME/_vimrc” for Windows users. Inside Vim, type “:echo $HOME” to see the value of “$HOME” for your system.
Indention Options

    set autoindent: New lines inherit the indentation of previous lines.
    set expandtab: Convert tabs to spaces.
    set filetype indent on: Enable indentation rules that are file-type specific.
    set shiftround: When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
    set shiftwidth=4: When shifting, indent using four spaces.
    set smarttab: Insert “tabstop” number of spaces when the “tab” key is pressed.
    set tabstop=4: Indent using four spaces.

Search Options

    set hlsearch: Enable search highlighting.
    set ignorecase: Ignore case when searching.
    set incsearch: Incremental search that shows partial matches.
    set smartcase: Automatically switch search to case-sensitive when search query contains an uppercase letter.

Performance Options

    set complete-=i: Limit the files searched for auto-completes.
    set lazyredraw: Don’t update screen during macro and script execution.

Text Rendering Options

    set display+=lastline: Always try to show a paragraph’s last line.
    set encoding=utf-8: Use an encoding that supports unicode.
    set linebreak: Avoid wrapping a line in the middle of a word.
    set scrolloff=1: The number of screen lines to keep above and below the cursor.
    set sidescrolloff=5: The number of screen columns to keep to the left and right of the cursor.
    syntax enable: Enable syntax highlighting.
    set wrap: Enable line wrapping.

User Interface Options

    set laststatus=2: Always display the status bar.
    set ruler: Always show cursor position.
    set wildmenu: Display command line’s tab complete options as a menu.
    set tabpagemax=50: Maximum number of tab pages that can be opened from the command line.
    set colorscheme wombat256mod: Change color scheme.
    set cursorline: Highlight the line currently under cursor.
    set number: Show line numbers on the sidebar.
    set relativenumber: Show line number on the current line and relative numbers on all other lines.
    set noerrorbells: Disable beep on errors.
    set visualbell: Flash the screen instead of beeping on errors.
    set mouse=a: Enable mouse for scrolling and resizing.
    set title: Set the window’s title, reflecting the file currently being edited.
    set background=dark: Use colors that suit a dark background.

Code Folding Options

    set foldmethod=indent: Fold based on indention levels.
    set foldnestmax=3: Only fold up to three nested levels.
    set nofoldenable: Disable folding by default.

Miscellaneous Options

    set autoread: Automatically re-read files if unmodified inside Vim.
    set backspace=indent,eol,start: Allow backspacing over indention, line breaks and insertion start.
    set backupdir=~/.cache/vim: Directory to store backup files.
    set confirm: Display a confirmation dialog when closing an unsaved file.
    set dir=~/.cache/vim: Directory to store swap files.
    set formatoptions+=j: Delete comment characters when joining lines.
    set hidden: Hide files in the background instead of closing them.
    set history=1000: Increase the undo limit.
    set nomodeline: Ignore file’s mode lines; use vimrc configurations instead.
    set noswapfile: Disable swap files.
    set nrformats-=octal: Interpret octal as decimal when incrementing numbers.
    set shell: The shell used to execute commands.
    set spell: Enable spellchecking.
    set wildignore+=.pyc,.swp: Ignore files matching these patterns when opening files based on a glob pattern.

