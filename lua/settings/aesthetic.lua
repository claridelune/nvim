local o = vim.o
local wo = vim.wo
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
--vim.cmd("colorscheme OceanicNext")
vim.cmd("colorscheme onedark")

--background (default)
o.background = "dark"

-- emoji (no se si funcione en windows xd)
o.emoji = true

--resalta la linea 
wo.cursorline = true

--o.clipboard = "unnamedplus"

--o.hidden = true 
--o.lazyredraw = true


