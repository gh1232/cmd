set nocompatible
"source g:\bin\vimkeys.vim
"source g:\bin\extras.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
nnoremap , :
"------------- _vimrc abov 
set autoindent " New lines inherit the indentation of previous lines.
set wildignore+=.pyc,.swp " Ignore files matching these patterns when opening files based on a glob pattern.
set nomodeline " Ignore file’s mode lines; use vimrc configurations instead.
" set noswapfile " Disable swap files.
set nrformats-=octal " Interpret octal as decimal when incrementing numbers.
" set backupdir=~/.cache/vim " Directory to store backup files.
set confirm " Display a confirmation dialog when closing an unsaved file.
" set dir=~/.cache/vim " Directory to store swap files.
set background=dark " Use colors that suit a dark background.
" set relativenumber " Show line number on the current line and relative numbers on all other lines.
" set number " Show line numbers on the sidebar.
set expandtab " Convert tabs to spaces.
filetype indent on " Enable indentation rules that are file-type specific.

set shiftround " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set shiftwidth=2 " When shifting, indent using four spaces.
set smarttab " Insert “tabstop” number of spaces when the “tab” key is pressed.
set tabstop=2 " Indent using four spaces.


set hlsearch " Enable search highlighting.
set ignorecase " Ignore case when searching.
set incsearch " Incremental search that shows partial matches.
set smartcase " Automatically switch search to case-sensitive when search query contains an uppercase letter.


set complete-=i " Limit the files searched for auto-completes.
set lazyredraw " Don’t update screen during macro and script execution.


set display+=lastline " Always try to show a paragraph’s last line.
set encoding=utf-8 " Use an encoding that supports unicode.
set linebreak " Avoid wrapping a line in the middle of a word.
set scrolloff=1 " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5 " The number of screen columns to keep to the left and right of the cursor.
syntax enable " Enable syntax highlighting.
set wrap " Enable line wrapping.


set laststatus=2 " Always display the status bar.
set ruler " Always show cursor position.
set wildmenu " Display command line’s tab complete options as a menu.
set tabpagemax=50 " Maximum number of tab pages that can be opened from the command line.
"colorscheme wombat256mod " Change color scheme.

set cursorline " Highlight the line currently under cursor.
set noerrorbells " Disable beep on errors.
set visualbell " Flash the screen instead of beeping on errors.
set mouse=a " Enable mouse for scrolling and resizing.
set title " Set the window’s title, reflecting the file currently being edited.


set foldmethod=indent " Fold based on indention levels.
set foldnestmax=3 " Only fold up to three nested levels.
set nofoldenable " Disable folding by default.

set autoread " Automatically re-read files if unmodified inside Vim.
set backspace=indent,eol,start " Allow backspacing over indention, line breaks and insertion start.
set formatoptions+=j " Delete comment characters when joining lines.
set hidden " Hide files in the background instead of closing them.
set history=2000 " Increase the undo limit.
"set shell " The shell used to execute commands.
" set spell " Enable spellchecking.

"50rc
:set guioptions=+M
syntax on
let mapleader = "\\"
"let g:mapleader=\
set timeoutlen=1000
nnoremap <silent> <leader> :WhichKey '\'<CR>
nnoremap <silent> <f5> :WhichKey '<f5>'<CR>
"nnoremap <silent> <leader> :WhichKey '<tab>'<CR>
:set viminfo='500

set tabstop=1
set expandtab
set shiftwidth=2
set softtabstop=2
set ignorecase
filetype plugin indent on
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
filetype indent on
set smartindent
:set cindent shiftwidth=2

" indent depends on filetype
:filetype indent on

autocmd FileType javascript setlocal equalprg=js-beautify\ --stdin
:filetype plugin on

filetype plugin indent on
hi Normal guifg=White guibg=Black
set titlestring=%F_%l/%L
au GUIEnter * simalt ~x
nnoremap q <esc>:q<cr> 
nnoremap <space> <c-f> 
set hlsearch
nnoremap <c-t> gg
inoremap <c-t> <esc>gg

nnoremap <c-b> G
inoremap <c-b> <esc>G

nnoremap <c-w> d
inoremap <c-w> <esc>d
nnoremap <c-l> dd
inoremap <c-l> <esc>dd
nnoremap <c-g> <pagedown>
inoremap <c-g> <esc><pagedown>

nnoremap <c-f> <pageup>
inoremap <c-f> <esc><pageup>

nnoremap <c-o> :browse :open<enter>

inoremap <c-o> <esc>:browse :open<enter>

nnoremap <c-d> :browse :sav<enter> 

inoremap <c-d> <esc>:browse :sav<enter>
nmap <c-2> :set guifont=Font\ Awesome\ 24<enter>
nmap <m-f> :set guifont=* <enter>
nnoremap <leader>f0 :set gfn=Lucida_Console:h30:cANSI<cr>
set hi=20
set gfn=Lucida_Console:h30:cANSI
nmap <f5>- :hi Normal guifg=White guibg=Black<cr>

nmap <f5>= :hi Normal guifg=Black guibg=White<cr>

nnoremap <f5><f5> <esc>:q<cr>
nnoremap <f5>8 :set gfn=Lucida_Console:h32:cANSI<cr>
nnoremap <f5>7 :set gfn=Lucida_Console:h30:cANSI<cr>
nnoremap <f5>5 :set gfn=Lucida_Console:h26:cANSI<cr>
nnoremap <f5>6 :set gfn=Lucida_Console:h28:cANSI<cr>
nnoremap <f5>3 :set gfn=Lucida_Console:h15:cANSI<cr>
nnoremap <f5>4 :set gfn=Lucida_Console:h20:cANSI<cr>
nnoremap <f5>2 :set gfn=Lucida_Console:h14:cANSI<cr>
nnoremap <f5>1 :set gfn=Lucida_Console:h9:cANSI<cr>

"set number

"set packpath+="G:\edtr\Vim8\vim81\pack"
"G:/edtr/Vim8/vim8/pack


" Plugins will be downloaded under the specified directory.
"silent! call  plug#begin('~/.vim/plugged')

" Declare the list of plugins.
"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'

" List ends here. Plugins become visible to Vim after this call.
"call plug#end()


"call plug#begin('g:\edtr\vimplugins')
"Plug 'itchyny/lightline.vim'
"call plug#end()


set runtimepath^=g:\edtr\pack\

"helptags ~/.vim/doc
set splitright
set splitbelow
set fileencodings=ucs-bom,utf-8,latin1
setglobal fileencoding=utf-8
set encoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=dos,unix,mac
"set timeoutlen=5000

noremap <leader>\f :Explore<CR>
noremap <leader>v :edit c:\cmd\vimkeys.vim <cr>G

nnoremap <leader>cw :hi Normal guifg=White guibg=Black <cr>
nnoremap <leader>cb :hi Normal guifg=Black guibg=lightgray <cr>

nnoremap <leader>f8 :set gfn=Lucida_Console:h28:cANSI <enter>
nnoremap <leader>nt :set number!<cr>
nnoremap <leader>o :bro ol<cr>
nnoremap <leader>wh :sp<cr>
nnoremap <leader>wv :vsp<cr>
nnoremap <silent> <Leader>bc :bclose<CR>
nnoremap <silent> <Leader>bn :bnext<CR>
nnoremap <leader>\n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>ot :TagbarToggle<CR>
nnoremap <leader>xn :NERDTree<cr>


function Download(url1,dir1)
  :!cd a:dir1
  if  v:shell_error
    :!cd 
  endif
  :!git clone a:url1
  if ! v:shell_error
    return 0
  endif
  "curl -O url
  "curl -o website url
  "wget -P /mnt/iso url

  :!curl -0 a:url1
  if ! v:shell_error
    return 0
  endif

  :!wget a:url1
  if ! v:shell_error
    return 0
  endif


  :!PowerShell.exe -ExecutionPolicy Unrestricted -command "iwr a:url1 "
  if ! v:shell_error
    return 0
  endif
  "PowerShell.exe -ExecutionPolicy Unrestricted -command "C:\temp\TestPS.ps1"
  "C:\> PowerShell.exe Invoke-Command -ScriptBlock { "C:\temp\TestPS.ps1"}
  "Invoke-WebRequest "https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.ps1" | Invoke-Expression
  "(Invoke-WebRequest -Uri $uri -Method $method -Body $body -Proxy $proxy -ContentType $contentType).Content
  "Invoke-WebRequest -Uri $uri -Method $method -Body $body -ContentType $contentType


endfunction 


