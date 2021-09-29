"Key Binds"

" Trigger completion menu
function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <C-Space>
		  \ pumvisible() ? "\<C-n>" :
		  \ <SID>check_back_space() ? "\<C-Space>" :
		  \ coc#refresh()

" Bind 'TAB' in COC 
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"Undo break Points
inoremap . .<c-g>u
inoremap , ,<c-g>u
inoremap ? ?<c-g>u
inoremap ! !<c-g>u

" Make Shift Y copy from the cursor to the end of the line.
nnoremap Y y$
" Exit terminal
tnoremap <C-n> <C-\><C-n>
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

nnoremap <leader>, :Buffers   <CR>
nnoremap <leader>. :Files   <CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>d "_d
nnoremap <Leader>o o<Esc>0D
nnoremap <Leader>O O<Esc>0D

nnoremap <C-c> :VimwikiAll2HTML <CR> 

nnoremap <C-H> <C-W>5<
nnoremap <C-J> :resize +5<CR> 
nnoremap <C-L> <C-W>5>    
nnoremap <C-K> :resize -5<CR>

nmap <Tab> :tabnext<Return>
nmap <S-Tab> :tabprev<Return>
" Use <C-l> for trigger snippet expand.
imap <C-j> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-l>'
let g:coc_snippet_prev = '<c-h>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-k> <Plug>(coc-snippets-expand-jump)

" Keybind to convert md file to pdf
nnoremap <F2> :! "$HOME"/projects/bash_scripts/mdtopdf.sh %<Return>
nnoremap <F3> :! "$HOME"/projects/bash_scripts/mdtopdf.sh % open<Return>
