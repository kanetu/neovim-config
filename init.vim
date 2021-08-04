"b:q >> load plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'            " Sensible defaults
Plug 'drewtempelmeyer/palenight.vim'  " Soothing color scheme for your favorite [best] text editor
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " File navigator
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " Install fuzzy finder binary
Plug 'junegunn/fzf.vim'               " Enable fuzzy finder in Vim
Plug 'editorconfig/editorconfig-vim' "Tab/Space trough projects
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intelisense
Plug 'sheerun/vim-polyglot'

call plug#end()

colorscheme palenight                 " Activate the Palenight theme

let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-diagnostic',
    \ 'coc-emmet',
    \ 'coc-eslint',
    \]


" Use Ctrl-k Ctrl-k to open a sidebar with the list of files
map <C-k> :NERDTreeToggle<cr>
map <S-Right> : tabn<cr>
map <S-Left> : tabp<cr> 
map <S-+> :tabnew<cr>
" Use Ctrl-P to open the fuzzy file opener
nnoremap <C-p> :Files<cr>


" basic settings
syntax on
filetype on
set number
set relativenumber
set ignorecase      " ignore case
set smartcase     " but don't ignore it, when search string contains uppercase letters
set nocompatible
set incsearch        " do incremental searching
set visualbell
set expandtab                         
set tabstop=4
set ruler
set smartindent
set shiftwidth=4
set hlsearch
set virtualedit=all
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent
set mouse=a  " mouse support

