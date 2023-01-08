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

require('plugy')
require('autocomp')

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

require('vim_var')
require('keybinds')

--source $HOME/.config/nvim/keys/vim_keybinds.vim
--source $HOME/.config/nvim/keys/which-key.vim
--source $HOME/.config/nvim/plug-config/start-screen.vim

