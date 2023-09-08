" General
source $HOME/.config/nvim/atajos.vim
source $HOME/.config/nvim/plugins.vim

" Plugins
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/nerd-tree.vim
source $HOME/.config/nvim/plug-config/fzf.vim

" Theme
set termguicolors
set background=dark
colorscheme onedark

set number relativenumber   "Numeros de lineas
set numberwidth=1
set clipboard=unnamed       "Copiar en el portapapeles
set sw=2                    "Identacion a 2 espacios
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
