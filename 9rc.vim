" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Basics {
    " Use Vim settings, rather than Vi settings (much better!).
    " This must be first, because it changes other options as a side effect.
    set nocompatible
    "set noexrc " don't use local version of .(g)vimrc, .exrc
    set cpoptions=aABceFsmq
    "             |||||||||
    "             ||||||||+-- When joining lines, leave the cursor between joined lines
    "             |||||||+-- When a new match is created (showmatch) pause for .5
    "             ||||||+-- Set buffer options when entering the buffer
    "             |||||+-- :write command updates current file name
    "             ||||+-- Automatically add <CR> to the last line  when using :@r
    "             |||+-- Searching continues at the end of the match at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    syntax on " syntax highlighting on
    set ls=2  " we like seeing the name of the file
    set hlsearch
  " }
  " General {
    let g:netrw_liststyle= 3  
    filetype plugin indent on " load filetype plugins/indent settings
    set backspace=indent,eol,start" allow backspacing over everything in insert mode
    set nobackup
    set nowritebackup
    set noswapfile
    set clipboard+=unnamed " share windows clipboard
    set fileformats=unix,mac,dos " support all three, in this order
    set hidden " you can change buffers without saving
    " (XXX: #VIM/tpope warns the line below could break things)
    set iskeyword+=_,$,@,%,# " none of these are word dividers
    set mouse=a " use mouse everywhere
    set noerrorbells visualbell t_vb=  " don't make noise don't make noise
    set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
    set wildmenu " turn on command line completion wild style
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
    set wildmode=list:longest " turn on wild mode huge list
    " set fen       " folding
    set fdl=0

    "Enabling spellcheker 
    autocmd BufNewFile,BufRead *.txt,*.htm,*.html,*.md,*.textile,*.gdoc,README set spell

  " }
" Autocommands {
    set tags=.git/tags,./tags,tags,../tags
    set tabstop=4
    set ts=4
    set ai sw=4
    set shiftwidth=4
    set expandtab
    set foldmethod=marker
    " Clojure {
        au Bufenter,Bufnewfile *.clj setl complete+=k~/.clj_completions
    " }
    " Coffeescript, need the vim-coffeescript plugin at https://github.com/kchmck/vim-coffee-script#readme{
        au BufWritePost *.coffee silent make!
        au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
        au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
        au BufNewFile,BufReadPost *.coffee set  softtabstop=2
        au BufNewFile,BufReadPost Cakefile setl shiftwidth=2 expandtab
        au BufNewFile,BufReadPost Cakefile set  softtabstop=2
    " }
    " Xml {
        au BufNewFile,BufRead *.xaml set ft=xml 
    " }
    " Ruby {
     " ruby standard 2 spaces, always
        au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2
        au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2
     " ruby autocomplete
        autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
        autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
        autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
        autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
        "improve autocomplete menu color
        highlight Pmenu ctermbg=238 gui=bold
     "}
     " Groovy {
        " Groovy standard 4 spaces, always
        au BufNewFile,BufRead *.gradle setf groovy
        au BufRead,BufNewFile *.gradle set shiftwidth=4 
        au BufRead,BufNewFile *.gradle set softtabstop=4 
     "}
     " GDOC {
        au BufNewFile,BufRead *.gdoc setf textile
        au BufRead,BufNewFile *.gdoc set shiftwidth=4 
        au BufRead,BufNewFile *.gdoc set softtabstop=4 
     "}
     " Markdown {
        au BufNewFile,BufRead *.md setf markdown
     "} 
     " Xml {
        au BufNewFile,BufRead *.thrift setf thrift
     "}
     " Scala {
        au BufNewFile,BufRead *.scala setf scala
        au BufRead,BufNewFile *.scala set shiftwidth=2 
        au BufRead,BufNewFile *.scala set softtabstop=2 
        au BufEnter *.scala setl formatprg=scala\ -cp\ /Users/bernardo/lib/scalariform.jar\ scalariform.commandline.Main\ --forceOutput

        " au BufNewFile,BufRead *.sbt setf scala
        au BufRead,BufNewFile *.sbt set shiftwidth=2
        au BufRead,BufNewFile *.sbt set softtabstop=2 
     "}
     " JSON {
        au! BufRead,BufNewFile *.json set filetype=json foldmethod=syntax 
        au! BufRead,BufNewFile *.json set shiftwidth=2
        au! BufRead,BufNewFile *.json set tabstop=2
        au! BufRead,BufNewFile *.json set expandtab
     "}
     " VARNISH {
        au BufRead,BufNewFile *.vcl :set ft=vcl
        au! Syntax vcl source ~/.vim/syntax/vcl.vim
     " }
     " HIVE {
        au! BufRead,BufNewFile *.hql setf sql
        au! BufRead,BufNewFile *.hql set shiftwidth=4
        au! BufRead,BufNewFile *.hql set tabstop=4
        au! BufRead,BufNewFile *.hql set expandtab
 
     " }
     " LaTex {
        " REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
        filetype plugin on
        " IMPORTANT: win32 users will need to have 'shellslash' set so that latex can be called correctly.
        set shellslash
        " IMPORTANT: grep will sometimes skip displaying the file name if
        " you search in a singe file. This will confuse Latex-Suite. Set your
        " grep program to always generate a file-name.
        set grepprg=grep\ -nH\ $*
        " OPTIONAL: This enables automatic indentation as you type.
        filetype indent on
        " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files
        " defaults to 'plaintex' instead of 'tex', which results in vim-latex not being
        " loaded.  The following changes the default filetype back to 'tex':
        let g:tex_flavor='latex'

        let g:livepreview_previewer='/Applications/Skim.app/Contents/MacOS/Skim'
     " }
        au BufNewFile,BufRead *.ahk setf ahk 
 " }
" Git Settings and Helper functions {
    autocmd Filetype gitcommit setlocal spell textwidth=72
" }

" GUI Settings {
     " Basics {
        "colorscheme github
        "colorscheme twilight
        colorscheme Tomorrow
        "colorscheme Tomorrow-Night
        "colorscheme Tomorrow-Night-Eighties
        "colorscheme Tomorrow-Night-Blue
        "colorscheme Tomorrow-Night-Bright
        set number
        hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
        hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
        nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
        "Omni menu colors
        hi Pmenu guibg=#333333
        hi PmenuSel guibg=#555555 guifg=#ffffff
        "Pattern matching
        hi MatchParen guifg=#000000 guibg=#D0D090 
        set mousehide " hide the mouse cursor when typing
     "}
     " Utils Bindings {
        " Expand %% to current file directory
        cabbr <expr> %% expand('%:p:h')
     " }
     " Font Switching Binds {
        map <F8><ESC>:set guifont=Consolas:h8<CR>
        map <F9><ESC>:set guifont=Consolas:h10<CR>
        map <F10><ESC>:set guifont=Consolas:h12<CR>
        map <F11><ESC>:set guifont=Consolas:h16<CR>
        map <F12><ESC>:set guifont=Consolas:h20<CR>
     " }
     "Tab Management {
        map <F8><ESC>:set guifont=Consolas:h8<CR>
        map <F9><ESC>:set guifont=Consolas:h10<CR>
        map <F10><ESC>:set guifont=Consolas:h12<CR>
        map <F11><ESC>:set guifont=Consolas:h16<CR>
        map <F12><ESC>:set guifont=Consolas:h20<CR>
     " }
     " Text Edition {
        " local replace 
        "nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>
        " global replace
        "nnoremap gR gD:%s/<C-R>///gc<left><left><left>
     " }
     " Supertab {
       let g:SuperTabMappingForward = '<c-space>'
       let g:SuperTabMappingBackward = '<s-c-space>'
      " 
     " }

 " }
 " CTAGS {
        map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR> 
        map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
 " }
 " CSCOPE Settings {
    "
    if has('cscope')
        set cscopetag cscopeverbose

        if has('quickfix')
            set cscopequickfix=s-,c-,d-,i-,t-,e-
        endif

        cnoreabbrev csa cs add
        cnoreabbrev csf cs find
        cnoreabbrev csk cs kill
        cnoreabbrev csr cs reset
        cnoreabbrev css cs show
        cnoreabbrev csh cs help

        cnoreabbrev <expr> csa
                    \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs add'  : 'csa')
        cnoreabbrev <expr> csf 
                    \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs find' : 'csf')
        cnoreabbrev <expr> csk 
                    \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs kill' : 'csk')
        cnoreabbrev <expr> csr
                    \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs reset' : 'csr')
        cnoreabbrev <expr> css
                    \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs show' : 'css')
        cnoreabbrev <expr> csh
                    \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs help' : 'csh')

        command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src

    endif
 " }
 " Rainbow Parens {
"    au VimEnter * RainbowParenthesesToggle
"    au Syntax * RainbowParenthesesLoadRound
"    au Syntax * RainbowParenthesesLoadSquare
"    au Syntax * RainbowParenthesesLoadBraces
 " }
 " Tagbar {
    nmap <F8> :TagbarToggle<CR>
 " }
 "
"--------------------------------------------------------------------------------------~
"
"--------------------------------------------------------------------------------------~
set history=50  " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch   " do incremental searching
" Don't use Ex mode, use Q for formatting
map Q gq
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
" the following enables spelling with F7 and disables it with shift-F7
nnoremap <silent><F7>   <ESC> :setlocal spell spelllang=en_us<CR>
nnoremap <silent><S-F7> <ESC> :setlocal nospell<CR>

"CTags 
" C-\ - Open the definition in a new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" A-] - Open the definition in a vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"imap <tab> <c-x><c-o>

" following enables page movment
nnoremap <silent><C-N> :next<CR>
nnoremap <silent><C-P> :prev<CR>

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!
  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  augroup END
endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif

" Pathogen http://www.vim.org/scripts/script.php?script_id=2332
call pathogen#infect()
syntax enable
filetype plugin indent on


