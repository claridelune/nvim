return require("packer").startup(
  function()
    use {"wbthomason/packer.nvim"}

    -- Lsp (tengo miedo)
    use {'neovim/nvim-lspconfig'}
    --[[ use {
        'neovim/nvim-lspconfig',
        config = function() require'plugins.lsp' end
    } ]]
    use{"glepnir/lspsaga.nvim"} -- 1 de 6(?
    -- use{"kabouzeid/nvim-lspinstall"} -- no me funciono en windows
    use{"williamboman/nvim-lsp-installer"} --amen


    -- coq autocompletado prueba1 
    --[[ use{"ms-jpq/coq_nvim"}
    use{"ms-jpq/coq.artifacts"}
    use{"ms-jpq/coq.thirdparty"} ]] -- comentarios al caso, le falta mucho xD

    -- coc, otra prueba de autocempletacion
    use({
        'neoclide/coc.nvim',
        branch = 'release',
    })

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
    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

    -- temas
    use {'marko-cerovac/material.nvim', opt = false, as = 'material'}
    use {'navarasu/onedark.nvim'}
    use {'mhartington/oceanic-next'}
    use {'xiyaowong/nvim-transparent'}
    use {'Shatur/neovim-ayu'}
    -- use {'folke/tokyonight.nvim'}
    -- use {'gruvbox-community/gruvbox'}
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
