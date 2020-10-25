set spell spelllang=en_us
set autochdir
let $FZF_DEFAULT_COMMAND='find .'
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

" Bind 'TAB' in COC 

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Trigger completion menu
function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <C-Space>
		  \ pumvisible() ? "\<C-n>" :
		  \ <SID>check_back_space() ? "\<C-Space>" :
		  \ coc#refresh()

inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

:map <leader>y :w !xclip<CR><CR>
:vmap <leader>y "*y
:map <leader>p :r!xclip -o<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" gd - go to definition of word under cursor
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
" gi - go to implementation
nmap <silent> gi <Plug>(coc-implementation)
" gr - find references
nmap <silent> gr <Plug>(coc-references)
" gh - get hint on whatever's under the cursor
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> gh :call <SID>show_documentation()<CR>
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <C-I> :IndentLinesToggle<CR> 
nnoremap <Leader>, :buffers<CR>:buffer<Space>
" Use <C-l> for trigger snippet expand.
imap <C-j> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-l>'
let g:coc_snippet_prev = '<c-h>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-k> <Plug>(coc-snippets-expand-jump)

set laststatus=2
set relativenumber



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
Plug 'neovimhaskell/haskell-vim' 
Plug 'vimwiki/vimwiki' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'ycm-core/YouCompleteMe'
Plug 'Yggdroot/indentLine'
Plug 'rrethy/vim-hexokinase'
"Plug 'mattn/emmet-vim'
"Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'

call plug#end()

let g:gruvbox_italic=1  "Enabling italics
colorscheme gruvbox
set background=dark
" autocmd vimenter * colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'


