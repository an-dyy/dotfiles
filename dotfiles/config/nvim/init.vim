call plug#begin("~/.config/nvim/plugged")
" Packages "

    " Visual
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'xiyaowong/nvim-transparent'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }


    " Fixers & Linters
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim',  {'branch': 'release'}

    " Files
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'

    " Highlighting
    Plug 'kovetskiy/sxhkd-vim'
    Plug 'vim-python/python-syntax'
    Plug 'ap/vim-css-color'

    " Misc
    Plug 'andweeb/presence.nvim'

call plug#end()

" Settings "
syntax enable
filetype plugin indent on
let mapleader=","
set hidden
set nobackup
set noswapfile
set number
set clipboard=unnamedplus

" Visual "
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
let g:transparent_enabled=v:true

" Encoding "
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Tabs "
set expandtab
set tabstop=4
set shiftwidth=4

" NerdTree "
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1

" Mappings "
nnoremap <silent> <leader>t :terminal<CR>
noremap <leader>c "+y<CR>
noremap <leader>p "+gP<CR>

" Ale "
let g:ale_linters={"python": ["flake8"]}
let g:ale_fixer={"python": ["black"]}
let g:ale_fix_on_save=1

" Airline "
let g:airline_theme="powerlineish"
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#ale#enabled=1
