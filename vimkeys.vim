set nocompatible
:set guioptions=+M
syntax on
let mapleader = "\\"
"let g:mapleader=\
set confirm
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
inoremap <f5>q <esc>:q<cr>
nnoremap <f5>q <esc>:q<cr>
nnoremap <f5>w <esc>:wq<cr> 
inoremap <f5>w <esc>:wq<cr> 
"inoremap <c-w> <esc>d
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
nmap <m-5> :set gfn=Lucida_Console:h5:cANSI <enter>
nmap <m-1> :set gfn=Lucida_Console:h1:cANSI <enter>
nmap <c-6> :set gfn=Lucida_Console:h26:cANSI <enter>
nmap <c-8> :set gfn=Lucida_Console:h28:cANSI <enter>
nmap <c-5> :set gfn=Lucida_Console:h15:cANSI <enter>
nmap <c-0> :set gfn=Lucida_Console:h20:cANSI <enter>
nmap <c-4> :set gfn=Lucida_Console:h14:cANSI <enter>
nmap <c-9> :set gfn=Lucida_Console:h9:cANSI <enter>
set hi=20
set gfn=Lucida_Console:h36:cANSI
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
set timeoutlen=5000
noremap <leader>ve :edit I:\upl\vimkeys.vim <cr>G

nnoremap <leader>Cw :hi Normal guifg=White guibg=Black <cr>
nnoremap <leader>Cb :hi Normal guifg=Black guibg=White <cr>

nnoremap <leader>nt :set number!<cr>
nnoremap <leader>wh :sp<cr>
nnoremap <leader>wv :vsp<cr>
nnoremap <silent> <Leader>bc :bclose<CR>
nnoremap <silent> <Leader>bn :bnext<CR>
nnoremap <leader>on :NERDTreeToggle<CR>
nnoremap <silent> <Leader>ot :TagbarToggle<CR>
