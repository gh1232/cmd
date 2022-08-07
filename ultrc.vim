"if has('autocmd')
  filetype plugin indent on
"endif
"if has('syntax') && !exists('g:syntax_on')
  syntax enable
"endif
set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set nrformats-=octal
if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=1000
endif
set incsearch
"if maparg('<C-S-H>', 'n') ==# ''
"  nnoremap <silent> <C-S-H> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-S-H>
"endif

if &laststatus < 2
  set laststatus=2
endif
set ruler
set wildmenu

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

if &shell =~# 'fish$' && (v:version < 704 || v:version == 704 && !has('patch276'))
  set shell=/usr/bin/env\ bash
endif

set autoread

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options
set viewoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^Eterm'
  set t_Co=16
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
"if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
"  runtime! macros/matchit.vim
"endif

"if empty(mapcheck('<C-U>', 'i'))
"  inoremap <C-U> <C-G>u<C-U>
"endif
"if empty(mapcheck('<C-W>', 'i'))
"  inoremap <C-W> <C-G>u<C-W>
"endif

" vim:set ft=vim et sw=2:



function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

function Plugininstall(mkdir,plugindir,dl,plugin)

  !a:mkdir a:plugindir

  !cd a:plugindir
  !a:dl a:plugin 
  "!vim -u NONE -c "helptags scriptease/doc" -c q

endfunction

"vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"

"nvim -es -u init.vim -i NONE -c "PlugInstall" -c "qa"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


  "iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
  "   ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
  "sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  "      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  "iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
  "   ni $HOME/vimfiles/autoload/plug.vim -Force

  "curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  "  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " Run PlugInstall if there are missing plugins
  autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) \| PlugInstall --sync \| endif 
  " | source $MYVIMRC \| endif

  call plug#begin()
  " The default plugin directory will be as follows:
  "   - Vim (Linux/macOS): '~/.vim/plugged'
  "   - Vim (Windows): '~/vimfiles/plugged'
  "   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
  " You can specify a custom plugin directory by passing it as the argument
  "   - e.g. `call plug#begin('~/.vim/plugged')`
  "   - Avoid using standard Vim directory names like 'plugin'

  " Make sure you use single quotes

  " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
  Plug 'junegunn/vim-easy-align'

  Plug 'benekastah/neomake', Cond(has('nvim'))
  Plug 'benekastah/neomake', Cond(has('nvim'), { 'on': 'Neomake' })

  Plug 'https://github.com/junegunn/vim-github-dashboard.git'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

  Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

  Plug 'fatih/vim-go', { 'tag': '*' }

  Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

  Plug '~/my-prototype-plugin'

  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

  Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

  Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

  Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

  Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }

  Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
  autocmd! User goyo.vim echom 'Goyo is now loaded!' 
  Plug 'tyru/open-browser.vim' " opens url in browser
  Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
  Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
  Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
  " Load on nothing
  Plug 'SirVer/ultisnips', { 'on': [] }
  Plug 'Valloric/YouCompleteMe', { 'on': [] }
  Plug 'https://github.com/tpope/vim-sensible'
  Plug 'https://github.com/Valloric/YouCompleteMe'
  Plug 'https://github.com/SirVer/ultisnips'
  Plug 'https://gist.github.com/952560a43601cd9898f1.git', { 'as': 'xxx', 'do': 'mkdir -p plugin; cp -f *.vim plugin/' }

  call plug#end()
  augroup load_us_ycm
    autocmd!
    autocmd InsertEnter * call plug#load('ultisnips','YouCompleteMe') \| autocmd! load_us_ycm
  augroup END 
  ":source %

  :PlugInstall
endif 

