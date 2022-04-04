local o = vim.o
local wo = vim.wo
local g = vim.g
-- imprime el numero de linea del cursor
wo.number = true
o.number = true

-- linea relativa
wo.relativenumber = true
o.relativenumber = true

--linea muy largar que no la rompa
--wo.wrap = false
--o.wrap = false

--que no rompa la palabra 
wo.linebreak = true

--:sp abre para abajo
o.splitbelow = true

--:vsp(verticalsplit) abre para la derecha
o.splitright = true

--soporte a 24 bits de colores
o.termguicolors = true

--colorschme
vim.cmd("colorscheme ayu")
vim.cmd("colorscheme OceanicNext")
vim.cmd("colorscheme onedark")

g.tokyonight_italic_functions = true
g.tokyonight_dark_float = false
g.tokyonight_italic_variables = true
g.tokyonight_transparent = true
g.tokyonight_transparent_sidebar = true
vim.cmd("colorscheme tokyonight")
-- vim.cmd("colorscheme material")

--background (default)
-- o.background = "dark"

-- emoji (no se si funcione en windows xd)
o.emoji = true

--resalta la linea 
-- wo.cursorline = true

--o.clipboard = "unnamedplus"

--o.hidden = true 
--o.lazyredraw = true

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- OceanicNext
g.oceanic_next_terminal_bold = 1
g.oceanic_next_terminal_italic = 1
