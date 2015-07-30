filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'benmills/vimux'
" Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/syntastic'
Plugin 'chriskempson/base16-vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
" Plugin 'Townk/vim-autoclose'
Plugin 'Raimondi/delimitMate'

call vundle#end()
filetype plugin indent on

" Tab control
set tabstop=4
set shiftwidth=4
set expandtab

set ttyfast

" Disalbe Arrow keys
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" Searching
set smartcase
set hlsearch
set incsearch

set showmatch

syntax on

set encoding=utf8
let base16colorspace=256
set t_Co=256
set background=dark
colorscheme base16-default

set number

set linebreak
set showbreak=...

set autoindent
set smartindent

set nobackup
set nowritebackup
set noswapfile

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" NERDTree
let g:NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1

" ctrlp
let g:ctrl_dotfiles=1

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/bin/python3'

" Emmet
let g:user_emmet_leader_key='<C-D>'

