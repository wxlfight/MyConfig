set encoding=utf-8

set nocompatible              " be iMproved, required

set shiftwidth=4
set ts=4
set expandtab
set autoindent
set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

syntax enable
set background=dark
colorscheme jellybeans

set hlsearch
highlight Search ctermfg=yellow

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'Shutnik/jshint2.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'ervandew/supertab'

Plugin 'L9'
Plugin 'grep.vim'
Plugin 'fencview.vim'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

let g:jsdoc_allow_input_prompt=1

" airline properties
set laststatus=2
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
" let g:airline_symbols.branch = '⎇'
let g:airline_theme='badwolf'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1

let g:UltiSnipsSnippetDirectories = ['UltiSnips','~/.vim/bundle/vim-snippets/UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
" let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit = 'vertical'

let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']

let g:SuperTabDefaultCompletionType = '<C-TAB>'

let g:gitgutter_max_signs = 3000

let g:fencview_autodetect = 0

let g:pyclewn_terminal = "xterm, -e"

" jshint
" let jshint2_close = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
