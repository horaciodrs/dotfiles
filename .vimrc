set nocompatible
filetype off

filetype plugin on                              "Sin esta linea no me funcionaban el auto identado.
filetype indent on                              "Sin esta linea no me funcionaban el auto identado.

syntax on
set cursorline
set nowrap
set noswapfile
set autoindent
set encoding=utf8

set ttimeoutlen=50                              "Con esto se soluciona la lentitud cuando se cambia de modo.

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'                "Barra de Estado.
Plugin 'scrooloose/syntastic'                   "Busca errores en el codigo.
Plugin 'kiddos/malokai.vim'                     "Color-scheme.
Plugin 'scrooloose/nerdtree'                    "Explorador de Archivos
Plugin 'ryanoasis/vim-devicons'                 "Iconos
Plugin 'octol/vim-cpp-enhanced-highlight'       "Mejora el resaltado de Sintaxis para C++
Plugin 'kennykaye/vim-relativity'               "Numero de Lineas Relativos. (:Relativity) para utilizar.
Plugin 'rip-rip/clang_complete'                 "Code completion for C and C++. Ctrl N y Ctrl P para Utilizar.
Plugin 'majutsushi/tagbar'                      "Navegar las funciones.
Plugin 'tpope/vim-fugitive'                     "GIT Support.
Plugin 'severij/vadelma'						"Color-scheme.

" OSX stupid backspace fix
set backspace=indent,eol,start

" Path que indica donde se encuentran los includes para que funcione el completado de codigo.
let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'

call vundle#end()

set shell=sh

" Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set t_Co=256
set background=dark

let g:airline#extensions#tabline#enabled = 1

let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme vadelma

hi Folded ctermbg=blue

map <F1> :Relativity<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :bprevious<CR>
map <F4> :bnext<CR>
map <F5> :bdelete<CR>
map <F10> :TagbarToggle<CR>

autocmd BufRead,BufNewFile * syn match parens /[(){};+:.,<>=-]/ | hi parens ctermfg=cyan
