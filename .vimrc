let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywordsset nocompatible
syntax on

" Interpret Python Scripts
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>r
" Setting Background Black
highlight Normal ctermbg=Black
" Tab width
:set tabstop=4
:set shiftwidth=4
:set expandtab
"Key Binds"
:nnoremap <C-I> :IndentLinesToggle<CR> 
map <C-n> :NERDTreeToggle<CR> 
""""""""""""""""Status Line"""""""""""""""""
set laststatus=2
" LEADER KEY
:let mapleader = "\<SPACE>"
" Line Numbers
:set relativenumber
" Close auto complete's preview window after insertion
let g:ycm_autoclose_preview_window_after_insertion = 1



""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins Here 



" Haskell Syntax highlighting
Plugin 'neovimhaskell/haskell-vim'
" VIM WIKI
Plugin 'vimwiki/vimwiki'
" YCM
Plugin 'ycm-core/YouCompleteMe'
"Indentation line
Plugin 'Yggdroot/indentLine'
""""""""CSS COLORS"""""""""""""
Plugin 'chrisbra/Colorizer' 
""""""""" Emmet(html auto complete)
Plugin 'mattn/emmet-vim'
"NERDtree
Plugin 'preservim/nerdtree'
" gruvbox theme
Plugin 'morhetz/gruvbox'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let g:gruvbox_italic=1  "Enabling italics
""Color Schema"

"colorscheme desert-night"Desert night color scheme
"TO load plugin colorschemes"
 autocmd vimenter * colorscheme gruvbox
 let g:gruvbox_contrast_dark='hard'

