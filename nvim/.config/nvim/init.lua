require('vim_var')
require('plugy')
require('keybinds')
require('autocomp')

local configs = require'nvim-treesitter.configs'
configs.setup {
ensure_installed = {"c", "cpp", "rust", "markdown", "latex", "commonlisp",
                    "bibtex", "bash", "go", "java", "toml", "python", "make",
                    "regex", "perl", "org", "lua"}, -- Only use parsers that are maintained
highlight = { -- enable highlighting
  enable = true, 
},
indent = {
  enable = true -- default is disabled anyways
}
}
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
  local opts = {}
  server:setup(opts)
end)
--source $HOME/.config/nvim/keys/vim_keybinds.vim
--source $HOME/.config/nvim/keys/which-key.vim
--source $HOME/.config/nvim/plug-config/start-screen.vim

