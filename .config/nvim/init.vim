" General
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/nerd-tree.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/atajos.vim
source $HOME/.config/nvim/plugins.vim

" Tema
set termguicolors
set background=dark
colorscheme onedark

" Barra estado tema
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

set number relativenumber   "Numeros de lineas
set numberwidth=1
set clipboard=unnamed       "Copiar en el portapapeles
set sw=4                    "Identacion a 4 espacios
set cursorline              "Resaltar la linea actual
set nowrap                  "No dividir la lineas si es muy larga
set hidden                  "Cambiar de buffer sin guardar
set encoding=utf-8          "Caracteres internacionales
set fileencoding=utf-8

" Busquedas
set ignorecase              "Ignora mayusculas en busquedas
set incsearch               "Busqueda incremental
set smartcase

syntax enable
filetype on
filetype indent on
filetype plugin on