inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
syntax on
let mapleader = "\<SPACE>"
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
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

"Key Binds"



nnoremap <leader>bk :bd<CR>
nnoremap <leader>. :CtrlP<CR>
nnoremap <leader>bn   <CR>:e<Space>
nnoremap <leader>wh :sp<CR>
nnoremap <leader>wc :close!<CR>
nnoremap <leader>wv :vsp<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <C-I> :IndentLinesToggle<CR> 
map <C-n> :NERDTreeToggle<CR> 

nnoremap <Leader>, :buffers<CR>:buffer<Space>

set laststatus=2
set relativenumber
let g:ycm_autoclose_preview_window_after_insertion = 1



""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()

" Plugins Here 
Plug 'neovimhaskell/haskell-vim' 
Plug 'vimwiki/vimwiki' 
Plug 'ycm-core/YouCompleteMe'
Plug 'Yggdroot/indentLine'
Plug 'rrethy/vim-hexokinase'
"Plun 'chrisbra/Colorizer' 
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'kien/ctrlp.vim'

cal plug#end()

let g:gruvbox_italic=1  "Enabling italics
autocmd vimenter * colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'


