set nocompatible              " be iMproved, required
set encoding=utf-8
set nobomb
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
filetype off " required

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" NerdThree
Plugin 'scrooloose/nerdtree'

" GOlang syntax hightlighting
"Plugin 'jnwhiteh/vim-golang'

Plugin 'fatih/vim-go'

" Bazillion of colorschemes, sweet!
Plugin 'flazz/vim-colorschemes'

" Gotham color scheme
Plugin 'whatyouhide/vim-gotham'

" Easy way to search for files
Plugin 'kien/ctrlp.vim'

" Python mode
Plugin 'hynek/vim-python-pep8-indent'

" vim sexy ass
Plugin 'bling/vim-bufferline'
Plugin 'bling/vim-airline'

" This allow me to see m-key marks
Bundle 'kshenoy/vim-signature'

" vim gist plugin
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

" Whitespace
Plugin 'bronson/vim-trailing-whitespace'

Plugin 'vim-pandoc/vim-pandoc'

" javascript indentation
Plugin 'jelera/vim-javascript-syntax'

Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()

" Standar setup
filetype plugin indent on " required
filetype on
filetype indent on
filetype plugin on

" Needed for vim-airline
set laststatus=2
set noshowmode

"Bundle set guifont=Liberation\ Mono\ for\ Powerline\ 10

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 " This shows vim top tab with buffers and name of the file

"let g:airline_left_sep = '»'
"let g:airline_right_sep = '«'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'

"themes: raven, badwolf
"themes: raven, rave
let g:airline_theme='badwolf'

" Unmap the arrow keys(normal mode)
no <down> <nop>
no <up> <nop>
" Unmap the arrow keys(insert mode)
ino <down> <nop>
ino <left> <nop>
ino <right> <nop>
ino <up> <nop>

" Indentation
set softtabstop=4 " Tells vim how many spaces a tab should take up
set shiftwidth=4 " Tells vim how many spaces a tab should take up
set autoindent
set smartindent
set expandtab " Convert all tabs to whitespace
set noexpandtab
set smarttab

" Annoyances
set noerrorbells
set number
set ruler
set nobackup
set noswapfile
set autochdir
set nowrap

" Sane searching and search highlights
set incsearch
set hlsearch
set showmatch
noremap - :nohls<CR>
set ignorecase
set smartcase

" Highlight current line
set cursorline

" Highlight current column
set cursorline cursorcolumn
set cursorline

"set leaders
let mapleader = ";"
let maplocalleader = "\\"

" INSERT mode mapping
" ========== BEGIN
noremap <leader><c-d> <esc>ddi
inoremap jk <esc>

" Forced to use 'jk' to enter normal mode
inoremap <esc> <nop>
" ========== END


" NORMAL mode mapping
" ========== BEGIN

" Move between buffers and panes
nnoremap <up> <C-W>k
nnoremap <down> <C-W>j
nnoremap <S-Left> <C-W>h
nnoremap <S-Right> <C-W>l
nnoremap <left> :bp!<CR>
nnoremap <right> :bn!<CR>
nnoremap H <C-w>w
nnoremap L <C-w>W
nnoremap <leader>rm <esc>:%s/\r//g<cr><esc>

" Uppercase word
nnoremap <leader><c-u> viwg<s-u>

" Indent with a keystroke
nnoremap <leader>g ggv<s-g>=

"Wrap word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Open vimrc in a new tab
nnoremap <leader>ev :vsplit $MYVIMRC<cr><c-w>

" Display nanme of the current file
nnoremap <leader>fp :echo expand('%:p')<cr>

" Select word with space
nnoremap <space> viw

" Move current line down
nnoremap - ddp

" Go to the start of the line with 'H'
nnoremap <s-h> <s-^>

" Go to the end of the line with 'L'
nnoremap <s-l> <s-$>
" ========= END

" VISUAL mode mapping
" ========= BEGIN

"Wrap word in single quotes
vnoremap <leader>' <esc>a'<esc>v:<cr>i'<esc>
vnoremap n <esc>

" ========= END

" Source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" vim abbreviations
iabbrev @@ <cr>Author:Luis Sagastume<cr>Email:lsagastume1990@gmail.com

" This will elimiate all the whitespace when a file is writen
autocmd FileType c,cpp,java,php,go,ruby,javascript,python,perl,sql,sh,yaml,html,erb,css,vim  autocmd BufWritePre <buffer> :%s/\s\+$//e

set cindent

set foldmethod=indent
"set foldlevel=1
set foldclose=all


"-----------------------------------------------
"The best colorschemes in flazz/vim-colorschemes
"-----------------------------------------------

"herald
"h3rald
"molokai
"candyman
"kruby
"moss
"neon
"zen
"wuye
"maroloccio
"marklar
"luinnar
"lucius
"desert256
"blazer
"blink
"mustang
"darkrobot
"darkspectrum
"dante
"rainbow_neon
"peppers
"paintbox
"navajo-night
"mint
"miko
"darkburn
"candy
"blackdust
"symfony
"void
"rootwater
"charon
"fu
"gothic
"potts
"matrix
"3dglasses
"adrian
"desertEx
"elflord
"graywh
"doriath
"metacosm
"mrkn256
"shobogenzo
"candystripe
"Tomorrow-Night-Eighties
"hybrid
"seoul256

" New colors
"bvemu
"burnttoast256
"babymate256
"256-grayvim
"256-jungle
"0x7A69_dark
"C64
"dante
"felipec
"grb256
"hemisu
"herokudoc
"holokai
"iceberg
"jellyx
"last256
"lizard256
"seoul256
"zephyr
"mrkn256
"darth
"louver

"kkruby
"mizore
"motus
"sexy-railscasts

"colorscheme burnttoast256
"colorscheme iceberg
colorscheme dracula
