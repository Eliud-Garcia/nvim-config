filetype indent on
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap {<CR> {<CR>}<Esc>i<CR><Esc>ki<Tab><Tab>



syntax on
set exrc
set clipboard=unnamed
set mouse=a
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab

set smarttab
set autoindent
set cindent


"elflord, shine, morning
colorscheme morning


set showcmd
set encoding=utf8
set number
set autowrite
set autoread

set nowrap

"para splitar las ventanas
set splitright
set splitbelow

"abre los archivos de input y output
function! AbrirArchivos()
  vsplit in.txt
  split out.txt
endfunction


" Aumentar indentación (Ctrl + ])
noremap <C-]> >>_
vnoremap <C-]> >gv

" Disminuir indentación (Ctrl + [)
noremap <C-[> <<_
vnoremap <C-[> <gv

" Eliminar la línea actual con Ctrl + E
nnoremap <C-e> dd

" Eliminar la línea actual con Ctrl + E en modo inserción
inoremap <C-e> <Esc>ddi

" Guardar archivo con Ctrl + S en modo normal
nnoremap <C-s> :w<CR>

" Guardar archivo con Ctrl + S en modo de inserción
inoremap <C-s> <Esc>:w<CR>i

" Duplicar línea actual con Ctrl + D en modo normal
nnoremap <C-d> Yp

" Duplicar línea actual con Ctrl + D en modo de inserción
inoremap <C-d> <Esc>Ypi


nnoremap <F5> :call AbrirArchivos()<CR>
nnoremap <F6> :r C:\Users\Eliud\Desktop\programming\CP\template\template.cpp <CR> 

"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++11 -Wall -Wextra -O2 -DLOCAL % -o %:r && %:r.exe<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> :vsplit <CR> :term g++ -std=c++11 -Wall -Wextra -O2 -DLOCAL % -o %:r  && %:r<CR>
autocmd filetype cpp nnoremap <F10> :vsplit <CR> :term %:r<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $


"copiar todo :%y+


call plug#begin('~/AppData/Local/nvim/plugged')

   " Use release branch (recommended)
   Plug 'neoclide/coc.nvim', {'branch': 'release'}

   " Or build from source code by using npm
   Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

call plug#end()



