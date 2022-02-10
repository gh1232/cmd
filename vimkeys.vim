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

"------------- _vimrc abov 

:set guioptions=+M
syntax on
let mapleader = "\\"
"let g:mapleader=\
set timeoutlen=500
nnoremap <silent> <leader> :WhichKey '\'<CR>
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
nmap <c-2> :set guifont=Font\ Awesome\ 14<enter>
nmap <m-f> :set guifont=* <enter>
nnoremap <leader>F2 :set gfn=Lucida_Console:h32:cANSI <enter>
nnoremap <leader>F1 :set gfn=Lucida_Console:h30:cANSI <enter>
nnoremap <leader>F6 :set gfn=Lucida_Console:h26:cANSI <enter>
nnoremap <leader>F8 :set gfn=Lucida_Console:h28:cANSI <enter>
nnoremap <leader>F5 :set gfn=Lucida_Console:h15:cANSI <enter>
nnoremap <leader>F0 :set gfn=Lucida_Console:h20:cANSI <enter>
nnoremap <leader>F4 :set gfn=Lucida_Console:h14:cANSI <enter>
nnoremap <leader>F9 :set gfn=Lucida_Console:h9:cANSI <enter>
set hi=20
set gfn=Lucida_Console:h20:cANSI
nmap <c--> :hi Normal guifg=White guibg=Black

nmap <c-=> :hi Normal guifg=Black guibg=White

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

noremap <leader>\f :Files<CR>
noremap <leader>ve :edit g:\bin\vimkeys.vim <cr>G

nnoremap <leader>Cw :hi Normal guifg=White guibg=Black <cr>
nnoremap <leader>Cb :hi Normal guifg=Black guibg=lightgray <cr>

nnoremap <leader>F8 :set gfn=Lucida_Console:h28:cANSI <enter>
nnoremap <leader>nt :set number!<cr>
nnoremap <leader>o :bro ol<cr>
nnoremap <leader>wh :sp<cr>
nnoremap <leader>wv :vsp<cr>
nnoremap <silent> <Leader>bc :bclose<CR>
nnoremap <silent> <Leader>bn :bnext<CR>
nnoremap <leader>\n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>ot :TagbarToggle<CR>
nnoremap <leader>xn :NERDTree<cr>
