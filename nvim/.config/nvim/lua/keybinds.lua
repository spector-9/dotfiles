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

-- LSP mappings
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local bufopts = { noremap=true, silent=true, buffer=bufnr }
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, bufopts)
vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)

--
--
--" Keybind to convert md file to pdf
--nnoremap <F2> :! "$HOME"/projects/bash_scripts/mdtopdf.sh %<Return>
--nnoremap <F3> :! "$HOME"/projects/bash_scripts/mdtopdf.sh % open<Return>
--
--
--" Write buffer through sudo
--cnoreabbrev w!! w !pkexec tee % >/dev/null
--" Change the current directory to the directory of the file in buffer
--nmap <silent> <leader>cd :cd %:p:h<cr>:pwd<cr>
