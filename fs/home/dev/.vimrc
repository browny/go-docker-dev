set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" custom plugins
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tpope/vim-fugitive'

" all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" general customizations
syntax on
filetype plugin on

set autoindent
set autoread
set confirm
set hidden
set hlsearch
set ignorecase
set modeline
set nobackup
set nocompatible
set nofoldenable
set noswapfile
set showcmd
set smartcase
set smartindent
set splitright
set visualbell
set noerrorbells

set backspace=2
set encoding=utf-8
set fileencodings=utf-8,cp950
set history=1000
set ls=2
set pastetoggle=<F2>
set scrolloff=999 " keep cursor at center when page up/down
set shiftwidth=4
set tabstop=4
"set expandtab
set timeoutlen=500
set ttimeoutlen=0
colorscheme molokai

let mapleader = ","

" plugin customizations

" vim go
" disable open browser after posting snippet
let g:go_play_open_browser = 0
" enable goimports
let g:go_fmt_command = "goimports"
" enable additional highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" ctrlp
nnoremap <Leader>p :CtrlP<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/bin/*,*/target/*,*.so,*.swp,*.zip,*/Godeps/*     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows  "
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|Godeps\|tmp$',
	\ 'file': '\v\.(exe|so|dll|class)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }
let g:ctrlp_max_files = 1000000 " 加大 cache 索引的檔案數, 否則會漏找檔案
let g:ctrlp_use_caching = 0

" tagbar
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds' : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

