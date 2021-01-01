noremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['n'] = [ ':CocCommand explorer'       , 'Explorer' ]
" let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
let g:which_key_map['S'] = [ ':Startify'                  , 'Start Screen' ]
" let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]
" f is for files

let g:which_key_map.t = {
      \ 'name' : 'Tabs' ,
      \ 't' : [':split term://zsh'     , 'Open terminal'],
      \ 'n' : ['tabedit'     , 'Open terminal'],
      \}
let g:which_key_map.s = {
      \ 'name' : 'Session' ,
      \ 's' : [':SSave[!]'     , 'Save session'],
      \ 'l' : [':SLoad '     , 'Load a session'],
      \ 'c' : [':SClose'     , 'Close a session'],
      \ 'd' : [':SDelete[!]'  , 'Delete a session'],
      \}
let g:which_key_map.w = {
      \ 'name' : 'Windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window'],
      \ 'h' : [':sp '     , 'Horizontal split '],
      \ 'v' : [':vsp'     , 'Vertical split'],
      \ 'c' : [':close!'  , 'Close window'],
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \}
let g:which_key_map.b = {
      \ 'name' : 'Buffer' ,
      \ 'n' : [':e new'     , 'New buffer'],
      \ 'k' : [':bd'     , 'Kill buffer'],
      \ 'r' : [':e'     , 'Refresh buffer'],
      \}

let g:which_key_map.f = {
      \ 'name' : 'Find' ,
      \ 's' : [':Rg '     , 'String'],
      \ 'f' : [':Files'   , 'File'],
      \}

let g:which_key_map.g = {
      \ 'name' : 'Git' ,
      \ '.' : [':GFiles'     , 'Search a file in git project'],
      \}
let g:which_key_map.v = {
      \ 'name' : 'Variable' ,
      \ 'r' : ['<Plug>(coc-rename)'     , 'Rename'],
      \ 'e' : [':CocList -I symbols'     , 'Refrences'],
      \}
" Register which key map
call which_key#register('<Space>', "g:which_key_map")
