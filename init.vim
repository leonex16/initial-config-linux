" TODO: Load plugins here
call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'mattn/emmet-vim'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

" Plugin 'alvan/vim-closetag'

Plug 'terryma/vim-multiple-cursors'

Plug 'sheerun/vim-polyglot' " Pack de lenguajes.

Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Yggdroot/indentLine'

Plug 'ervandew/supertab' " Permite navegar entre las sugerencias de deoplete usando Tab.

" Plug 'tpope/vim-surround' " Facilita poner/quitar/cambiar comillas, paréntesis, tags, etc sobre un texto.

Plug 'jiangmiao/auto-pairs' " Inserta pares de comillas y paréntesis.

call plug#end()

" Gruvbox
let g:gruvbox_contrast_dark='hard'

" Airline
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
" Cargar fuente Powerline y símbolos https://github.com/ryanoasis/nerd-fonts
let g:airline_powerline_fonts = 1

" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"

" IdentLine
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" NerdTree
let NERDTreeQuitOnOpen=1

" Deoplete
let g:deoplete#enable_at_startup = 1

" Ultisnps let variable =  value
let g:UltiSnipsExpandTrigger='<TAB>'
let g:UltiSnipsJumpForwardTrigger='<TAB>' " Bajar con tab
let g:UltiSnipsJumpBackwardTrigger='<S-TAB>' " Subir con shif tab
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsListSnippets="<C-t>" " Listar todos los snippets

" Turn on syntax highlighting
syntax on

" TODO: Pick a leader key
" Leader
let mapleader=' '

" Guardar
nmap <C-s> :w<CR>
imap <C-s> <ESC>:w<CR>a

" Salir sin guardar
nmap <Leader>q :q<CR>

" Guardar y Salir
nmap <Leader>x :x<CR>

" Salir del modo insertar 
imap ii <ESC>

" Salir del modo visual y entrar a modo insertar
vmap ii <ESC>i

" NerdTree
nmap <Leader>nt :NERDTreeFind<CR>

" Abrir archivo de configuración
nmap <Leader>conf :tabnew ~/.config/nvim/init.vim<CR>

" Comentar linea
nmap <Leader>c 0i//<ESC>

" Número de linea
set number
set relativenumber

" Combitar portapapeles
set clipboard=unnamed

" Habilitar el mouse
set mouse=a

" Encoding
set encoding=utf-8

" Whitespace
set wrap " Envuelve el texto en lugar de forzar un desplazamiento horizontal. 
set linebreak " Envuelve el texto al final de una palabra. Esto es lo que evita que una palabra se divida en dos.
set nolist " Debe desactivar list que muestra los caracteres de espacio en blanco como texto.
set textwidth=85
set colorcolumn=+1
set tabstop=2

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

" Color scheme (terminal)
" set t_Co=255
set background=dark
colorscheme gruvbox
