vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'liuchengxu/vim-which-key'
    local keymap = vim.api.nvim_set_keymap
    use { 
      'goolord/alpha-nvim',
      requires = { 'kyazdani42/nvim-web-devicons' },
      config = function ()
      require'alpha'.setup(require'alpha.themes.startify'.opts)
      local startify = require("alpha.themes.startify")
      startify.section.bottom_buttons.val = {
          startify.button("e", "new file", ":ene <bar> startinsert <cr>"),
          startify.button("v", "neovim config", ":e ~/.config/nvim/init.lua<cr>"),
          startify.button("q", "quit nvim", ":qa<cr>"),
        }  
      end
    }
    use 'Yggdroot/indentLine'
    use 'rrethy/vim-hexokinase'
    use 'sainnhe/gruvbox-material'
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'SirVer/ultisnips'
    use 'quangnguyen30192/cmp-nvim-ultisnips'
    use {
        'vimwiki/vimwiki',
        config = function()
            vim.g.vimwiki_list = {
                {
                    path = '~/Media/Documents/vimwiki/',
                    syntax = 'markdown',
                    ext = '.md'
                }
            }


            vim.g.vimwiki_list = {
                {
                    path = '~/Media/Documents/vimwiki/',
                    path_html = '~/Media/Documents/vimwiki/html',
                    syntax = 'markdown',
                    ext = '.md',
                    custom_wiki2html = '~/custom_wiki.sh'
                }
            }

            vim.g.vimwiki_global_ext = 0

        end
    }
end)

