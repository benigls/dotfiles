call plug#begin('~/.vim/plugged')

" Utilities
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline-themes' | Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim' | Plug 'garbas/vim-snipmate'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'

" Colorscheme
Plug 'chriskempson/base16-vim'

" JavaScript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" html
Plug 'mattn/emmet-vim', { 'for': 'html' }


call plug#end()
