return require("packer").startup(
  function()
    use {"wbthomason/packer.nvim"}
    -- dependencias
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-lua/popup.nvim"}
    -- comentarios 
    use {'b3nj5m1n/kommentary'}
    -- lalinea de abajo
    use {"hoob3rt/lualine.nvim"}
    -- temas
    use {'marko-cerovac/material.nvim', opt = false, as = 'material'}
    use {'navarasu/onedark.nvim'}
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
end
)
