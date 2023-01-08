local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
keymap('i', '{', '{}<left>', opts)
keymap('i', '{<CR>', '{<CR>}<ESC>O', opts)
keymap('i', '{;<CR>', '{<CR>};<ESC>O', opts)

-- Undo, break Points
keymap('i', '.', '.<c-g>u', opts)
keymap('i', ',', ',<c-g>u', opts)
keymap('i', '?', '?<c-g>u', opts)
keymap('i', '!', '!<c-g>u', opts)

-- Make Shift Y copy from the cursor to the end of the line.
keymap('n', 'Y', 'y$', opts)
--" Exit terminal
keymap('t', '<C-n>', '<C-\\><C-n>', opts)
--nnoremap <leader>, :buffers   <CR>
--nnoremap <leader>. :Files   <CR>
keymap('n', '<leader>h', ':wincmd h<CR>', opts)
keymap('n', '<leader>j', ':wincmd j<CR>', opts)
keymap('n', '<leader>k', ':wincmd k<CR>', opts)
keymap('n', '<leader>l', ':wincmd l<CR>', opts)
keymap('n', '<leader>d', '"_d', opts)
keymap('n', '<Leader>o', 'o<Esc>0D', opts)
keymap('n', '<Leader>O', 'O<Esc>0D', opts)
--

--nnoremap <C-c> :VimwikiAll2HTML <CR> 
--
keymap('n', '<C-H>', '<C-W>5<', opts)
keymap('n', '<C-J>', ':resize +5<CR> ', opts)
keymap('n', '<C-L>', '<C-W>5>    ', opts)
keymap('n', '<C-K>', ':resize -5<CR>', opts)
--
keymap('n', '<Tab>', ':tabnext<Return>', {})
keymap('n', '<S-Tab>', ':tabprev<Return>', {})

-- Keybind to convert md file to pdf
--nnoremap <F2> :! "$HOME"/projects/bash_scripts/mdtopdf.sh %<Return>
--nnoremap <F3> :! "$HOME"/projects/bash_scripts/mdtopdf.sh % open<Return>
--
--
--" Write buffer through sudo
--cnoreabbrev w!! w !pkexec tee % >/dev/null
--" Change the current directory to the directory of the file in buffer
--nmap <silent> <leader>cd :cd %:p:h<cr>:pwd<cr>
