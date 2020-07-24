autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>r
highlight Normal ctermbg=Black

"Key Binds"
" :nnoremap <C-I> :IndentLinesToggle<CR> Useless,tab can be used instead.
""""""""""""""""Status Line"""""""""""""""""
set laststatus=2
""""""""""""""""LEADER KEY""""""""""""""""""""


:let mapleader = "\<SPACE>"


"""""""""""""""""""""""""""""""""""""""""""""
"Line Numbers
:set relativenumber
""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""Close preview window after inseriton""""""""""
let g:ycm_autoclose_preview_window_after_insertion = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plugin required commands
set nocompatible
filetype plugin on
syntax on


""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""plugins here"""""""""""""""""""""""""

""""""""VIM WIKI""""""""""""""""
""A personal organiser"
Plugin 'vimwiki/vimwiki'

"""""""""""""""""""""""""""""

"""""""""""""YCM""""""""""
"""""""Auto Completer"""""
Plugin 'ycm-core/YouCompleteMe'

"''''Indentation line(visual lines)""""""""""""
Plugin 'Yggdroot/indentLine'


""""""""CSS COLORS"""""""""""""
Plugin 'chrisbra/Colorizer' 

""""""""" Emmet """""""""""""""
"""""HTML AUTO COMPLETER""""""""
Plugin 'mattn/emmet-vim'
"
""""""""""File tree"""""""""""
""""""""NERDtree""""""""""""""
Plugin 'preservim/nerdtree'

""""""""""Color Theme""""""""
""gruvbox""""
Plugin 'morhetz/gruvbox'
Plugin 'kyoz/purify', { 'rtp': 'vim' }
map <C-n> :NERDTreeToggle<CR> 

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

