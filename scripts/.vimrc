"Línea de status personalizada
set laststatus=2
set statusline=
set statusline+=%2*
set statusline+=\ 
set statusline+=%{StatuslineMode()}
set statusline+=\ 
set statusline+=%1*
set statusline+=\ 

set statusline+=V
set statusline+=%{winnr()}
set statusline+=\ 
set statusline+=-
set statusline+=\ 
set statusline+=B
set statusline+=%n
set statusline+=\ 

set statusline+=%4*
set statusline+=\ 
set statusline+=%{&ff}
set statusline+=\ 
set statusline+=%{strlen(&fenc)?&fenc:'none'}
set statusline+=\ 
set statusline+=%y
set statusline+=%1*
set statusline+=\ 

set statusline+=%=

set statusline+=%m
set statusline+=%h
set statusline+=%r
set statusline+=\ 

set statusline+=%5*
set statusline+=\ 
set statusline+=%l
set statusline+=:
set statusline+=%c
set statusline+=/
set statusline+=%L
set statusline+=\ 
set statusline+=%P
set statusline+=\ 
set statusline+=%1*

hi User1 ctermbg=black ctermfg=white guibg=black guifg=white
hi User2 ctermbg=lightgreen ctermfg=black guibg=lightgreen guifg=black
hi User3 ctermbg=black ctermfg=lightblue guibg=black guifg=lightblue
hi User4 ctermbg=black ctermfg=lightgreen guibg=black guifg=lightgreen
hi User5 ctermbg=black ctermfg=magenta guibg=black guifg=magenta

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction

"Inhabilitar teclas 
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set hidden

"Número de línea
set number
set relativenumber

"Anular compatibilidad con Vi
set nocompatible

"Formato de codificación
set encoding=utf-8

"Habilitar sintaxis
syntax enable

"Historial de comandos
set history=0

"Desactivar ficheros Swap
set nobackup
set nowritebackup
set noswapfile

"Mostrar coincidencias en resultados de búsqueda
set showmatch

"Ignorar mayúsculas y minúsculas en búsqueda
set ignorecase

"Margen de líneas en scroll
set scrolloff=8

"Mantener tabulación
set autoindent

"Dividir pantalla, derecha y abajo
set splitbelow splitright

call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-buftabline'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'

call plug#end()
