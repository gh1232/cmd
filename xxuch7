filetype off  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'Solarized'
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'c.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'mileszs/ack.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'Lokaltog/vim-powerline'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Bundle 'junegunn/fzf.vim'


filetype plugin indent on
" 设置组件leader
let mapleader = ";"
let g:mapleader = ";"

map <F1> :NERDTreeToggle<CR>
map <leader>` :NERDTree %:p:h<cr>                   " 打开当前目录窗口 " `
let NERDTreeDirArrows=0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif

" tab相关操作快捷键
map <leader>n :tabnew ./<cr>
" map <leader>f :new ./<cr>
map <leader>v :vnew ./<cr>
map <leader>s :sp<cr>
map <leader>tb :tabp<cr>

map <leader>oa :cd /data/www/oa<cr>                " 跳转目录
map <leader>org :cd /data/www/organization<cr>                " 跳转目录 ""

set nu
set mouse=a
set tabstop=2
map Y "+y
map P "+p  ""
let g:EasyMotion_leader_key = '<Leader>'

set mouse=a
set laststatus=2
set t_Co=256
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set hlsearch
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=40        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口


"<Leader>f在当前目录搜索文件
nnoremap <silent> <Leader>f :Files<CR>
""<Leader>b切换Buffer中的文件
nnoremap <silent> <Leader>b :Buffers<CR>
"<Leader>p在当前所有加载的Buffer中搜索包含目标词的所有行，:BLines只在当前Buffer中搜索
nnoremap <silent> <Leader>p :Lines<CR>
""<Leader>h在Vim打开的历史文件中搜索，相当于是在MRU中搜索，:History：命令历史查找
nnoremap <silent> <Leader>h :History<CR>
"调用Rg进行搜索，包含隐藏文件
""command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case --hidden '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)



"设置光标所在行列
 set cursorline
 hi CursorLine   cterm=NONE ctermbg=lightgray ctermfg=black guibg=black guifg=lightblue
" set cursorcolumn
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

set backspace=2
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


" 更改主题
 set background=dark
" colorscheme solarized
" syntax enable

" 设置注释的下一行不自动添加注释
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
