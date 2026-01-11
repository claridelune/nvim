return require("packer").startup(
  function()
    use {"wbthomason/packer.nvim"}

    -- LSP and completion
    use { "neovim/nvim-lspconfig" }
    use {
      "williamboman/mason.nvim",
      run = function()
        pcall(vim.cmd, "MasonUpdate")
      end,
    }
    use { "williamboman/mason-lspconfig.nvim" }
    use {
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "saadparwaiz1/cmp_luasnip",
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
      },
    }

    -- Vimtex
    use {"lervag/vimtex"}

    -- Indent line
    -- use {'lukas-reineke/indent-blankline.nvim'}

    -- bufferline
    use {'akinsho/bufferline.nvim'}

    -- dependencias
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-lua/popup.nvim"}

    -- comentarios 
    use {'b3nj5m1n/kommentary'}
    -- lalinea de abajo
    use {"hoob3rt/lualine.nvim"}

    use({
        'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons' },
    })
    -- Sintax Highlighting
    -- use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- temas
    use {'marko-cerovac/material.nvim', opt = false, as = 'material'}
    use {'navarasu/onedark.nvim'}
    use {'mhartington/oceanic-next'}
    use {'xiyaowong/nvim-transparent'}
    use {'Shatur/neovim-ayu'}
    use {'folke/tokyonight.nvim'}
    use {'gruvbox-community/gruvbox'}
    -- telescope
    use {
	'nvim-telescope/telescope.nvim',
	requires = { {'nvim-telescope/telescope-fzy-native.nvim'} }
    }
    use({
        "glepnir/dashboard-nvim",
        opt = true,
        cmd = {
          "Dashboard",
          "DashboardChangeColorscheme",
          "DashboardFindFile",
          "DashboardFindHistory",
          "DashboardFindWord",
          "DashboardJumpMarks",
          "DashboardNewfile",
        },
      })
    --plugins para probar despues
    --use {'godlygeek/tabular'; opt = true; cmd = {'Tabularize'}};
    --use {'inkarkat/vim-UnconditionalPaste', opt = true}
    --use{'lewis6991/gitsigns.nvim'}
    --
end
)
