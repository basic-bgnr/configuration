set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'https://github.com/mattn/webapi-vim.git'
Plugin 'https://github.com/gabrielelana/vim-markdown.git'
Plugin 'JamshedVesuna/vim-markdown-preview'


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" Conque is used to run shell within vim 
Plugin 'jewes/Conque-Shell'
set hidden "hides buffer instead of closing them
let g:racer_experimental_completer = 1
let g:rustfmt_command = "cargo fmt -- " 
let g:rustfmt_autosave = 1
"disable autocompletion in python 
let g:pymode_rope = 0




au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
Plugin 'davidhalter/jedi-vim'
set nowrap
set number
"prevent autosaving in vim
set nobackup
"prevent .swp file creating, its more hassle to deal with instead use git
"efficiently
set noswapfile
filetype plugin indent on 
"prevent text jumble when directly pasting autoindent prevention
set pastetoggle=<F2>
"set mouse usable in rust, useful for scrolling and nothing else
set mouse=a
Plugin 'rust-lang/rust.vim'
Plugin 'jlanzarotta/bufexplorer'


"change the mapleader from \ to , 
let mapleader=","

"start backspace over everything in insert mode
set backspace=indent,eol,start 
set hlsearch "highlight item in realtime in searching 
set smartcase "ignore case while searching


set history=1000 "remember 1000 step of commands
set undolevels=1000 "remember 1000 step of undo 
"changing from : to ; for easier usecase demo phase!!!!
nnoremap ; :

"experimental Q to select and change paragraph in visual mode
vmap Q gq
nmap Q gqap

"stop using arrow key to navigate the content
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Easy window navigation
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k

"adding support for html autocomplete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags




