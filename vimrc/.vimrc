let g:vimwiki_global_ext = 0
filetype plugin on
set spell spelllang=en_us
set dictionary=~/.config/nvim/american-english
set iskeyword+=-
set splitbelow                          " Horizontal splits will automatically be below
set splitright
set autochdir
let $FZF_DEFAULT_COMMAND='find .'
syntax on
let mapleader = "\<SPACE>"
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set clipboard=unnamedplus
set showtabline=2
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set laststatus=0

" Label Mode for Vim Sneak
let g:sneak#label = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()

" Plugins Here 
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'vimwiki/vimwiki' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'rrethy/vim-hexokinase'
"Plug 'morhetz/gruvbox'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'sainnhe/gruvbox-material'
Plug 'michal-h21/vim-zettel'

call plug#end()

"let g:gruvbox_italic=1  "Enabling italics
"let g:gruvbox_contrast_dark='soft'
let g:gruvbox_material_italic=1  "Enabling italics
let g:gruvbox_material_background='soft'
colorscheme gruvbox-material
set background=dark



let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


let g:vimwiki_list = [{'path': '$HOME/vimwiki',
  \ 'path_html': '$HOME/vimwiki_html',
  \ 'syntax': 'markdown',
  \ 'ext': '.md',
  \ 'auto_tags':1,
  \ 'custom_wiki2html': '$HOME/custom_wiki.sh'}]


let g:vimwiki_customwiki2html=$HOME.'$HOME/custom_wiki.sh'
