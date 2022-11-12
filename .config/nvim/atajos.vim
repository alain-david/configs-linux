let mapleader=" "

" Abrir NERDTreeFind
map <C-b> :NERDTreeFind<CR>
map <Leader>f :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

" Guardar
nnoremap <C-s> :w<CR>

" Guardar y salir
nnoremap <C-q> :wq!<CR>

" Salir sin guardar
nnoremap <Leader>q :q!<CR>

" Cerrar buffer
" nnoremap <Leader>b :bd<CR>

" Cambiar windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Mover text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==

" alt + hl resize windows
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Remap escape
nnoremap <C-c> <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>
inoremap kk <Esc>

" Comentar
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" run current file
" nnoremap <Leader>x :!node %<cr>
