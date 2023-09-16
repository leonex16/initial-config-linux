set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " show relative line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set an 120 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard+=unnamedplus   " using system clipboard
set tabpagemax=10

filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
set textwidth=0 
set wrapmargin=0
set nowrap

let mapleader = " " " map leader to Space

call plug#begin()
 Plug 'mhinz/vim-startify'

 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'

 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'

 Plug 'hail2u/vim-css3-syntax'
 Plug 'ap/vim-css-color'

 Plug 'sheerun/vim-polyglot'
 Plug 'ervandew/supertab'
 Plug 'raimondi/delimitmate'
 Plug 'chiel92/vim-autoformat'
 Plug 'mg979/vim-visual-multi', {'branch': 'master'}

 Plug 'sainnhe/everforest'
 Plug 'ryanoasis/vim-devicons'
 Plug 'nathanaelkane/vim-indent-guides'
 Plug 'kien/rainbow_parentheses.vim'

 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
let g:everforest_enable_italic = 1
let g:everforest_transparent_background = 1
let g:everforest_dim_inactive_windows = 1
let g:everforest_ui_contrast = 'high'
let g:airline_theme = 'everforest'
colorscheme everforest


" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L
" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>
" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

nnoremap <silent><A-s> <c-u>:update<cr>
vnoremap <silent><A-s> <c-c>:update<cr>gv
inoremap <silent><A-s> <c-o>:update<cr>

" Toogle nerdtree 
nnoremap <C-b> :NERDTreeToggle<CR>

" Previous tab
nnoremap <Leader>1 :tabp<CR>
" Next Tab
nnoremap <Leader>2 :tabn<CR>

" Resize split panels
nnoremap <silent> <C-Shift-Left> :vertical res -5<CR>
nnoremap <silent> <C-Shift-Right> :vertical res +5<CR>
nnoremap <silent> <C-Shift-Up> :res -5<CR>
nnoremap <silent> <C-Shift-Down> :res +5<CR>

autocmd BufWinEnter * NERDTreeMirror

