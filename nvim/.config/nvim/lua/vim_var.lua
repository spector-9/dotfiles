HOME = os.getenv("HOME")
vim.g.mapleader = " "
--vim.opt.iskeyword = {'+', '=', '-', '.', ':', '-'}
vim.g.gruvbox_italic = 1  --Enabling italics
--set updatetime=50
vim.cmd [[
    syntax on
    filetype plugin on
    colorscheme gruvbox-material
    packadd termdebug
]]

vim.g.background = dark
vim.o.dictionary = HOME .. "/.config/nvim/american-english"
vim.o.splitbelow = true      
vim.o.splitright = true
vim.o.cmdheight=2
vim.o.laststatus=2
vim.o.autochdir = true
vim.o.hidden = true
vim.o.errorbells = false
vim.o.showtabline = 2
vim.o.clipboard = "unnamedplus"
vim.o.smartcase = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.incsearch = true
vim.o.undodir = HOME .. '/.config/nvim_extras/undodir'
vim.o.termguicolors = true
vim.o.scrolloff=8
vim.o.showmode = false
vim.o.completeopt="menuone,noinsert,noselect"
vim.o.hlsearch = false

vim.wo.relativenumber = true
vim.wo.colorcolumn="80"
vim.wo.wrap = false
vim.wo.nu = true

vim.bo.spelllang = "en_us"
vim.bo.undofile = true

vim.opt.softtabstop=4
vim.opt.tabstop=4 
vim.opt.shiftwidth=4
vim.opt.expandtab = true
vim.opt.smartindent = true
