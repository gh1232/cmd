set encoding=utf-8
let &t_Co=256

" Configuration file for vim
" Pathogen
execute pathogen#infect()

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc("~/work/dot-files/vim/bundle")
set modelines=0		" CVE-2007-2438

"   colorscheme Monokai
"   set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
au BufRead,BufNewFile *.go set filetype=go

" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
filetype indent on
syntax enable
set grepprg=grep\ -nH\ $*

set showcmd      " Shows what you are typing as a command
set nocompatible " Necessary for lots for cool vim things
set ruler        " Always show current positions along the bottom
set nu           " Set linenumber
set ai           " Auto indent
set si           " Smart indet
set wrap         " Wrap lines
syntax on

" No sound on errors
set noerrorbells
set novisualbell
set ignorecase   " Ignore case when searching
set smartcase
set hlsearch     " Highlight search things
set incsearch    " Make search act like search in modern browsers
set nolazyredraw " Don't redraw while executing macros
set magic        " Set magic on, for regular expressions
set showmatch    " Show matching bracets when text indic

set tabstop=1
set shiftwidth=1
set expandtab     " Convert Tabs into Spaces
set softtabstop=4 " Tab conversion to number of spaces
set shiftwidth=2  " Auto-indent amount
set shiftround    " When at 3 spaces, when I hit > .. go to 4, not 5
set smarttab

set noswapfile
set nobackup
set nowritebackup
set autowriteall
set autoread
au FocusLost * :wa " Auto Save when losing focus

autocmd FileType go set tabstop=4|set shiftwidth=4|set expandtab

" No Arrow Keys
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" kj - Get out of Insert mode
imap kj <Esc>
imap jj <Esc>

abbrev ff :! open -a firefox.app %:p<cr>
abbrev chrome :! open -a google\ chrome.app %:p<cr>
abbrev canary :! open -a google\ chrome\ canary.app %:p<cr>
abbrev sf :! -a safari.app %:p<cr>

set gdefault " Global searching as default

" Fast Scrolling
nnoremap <C-e>  3<C-e>
nnoremap <C-y>  3<C-y>

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
    set spl=en spell
    set nospell
endif

set mouse=a        " Enable mouse support in console
set guifont=Monaco:h15

"Always show the status line
set ls=2
"
" " Keep 3 lines when scrolling
set scrolloff=3

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci

" External programs
cnoremap lsf !ls
cnoremap gft !gofmt -w %:p
cnoremap grn !go run %:p

" Vundle test
Bundle 'tpope/vim-fugitive'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'tpope/vim-rails'
Bundle 'kchmck/vim-coffee-script'
