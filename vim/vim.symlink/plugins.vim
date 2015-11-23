call plug#begin('~/.vim/plugged')

" Utilities
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'ervandew/supertab'

" Colorscheme
Plug 'chriskempson/base16-vim'

" JavaScript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" yaml
Plug 'chase/vim-ansible-yaml', { 'for': 'yaml' }

" html
Plug 'mattn/emmet-vim', { 'for': 'html' }


call plug#end()
