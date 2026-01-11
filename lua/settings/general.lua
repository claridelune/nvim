local wo = vim.wo
local o = vim.o
local g = vim.g
local opt = vim.opt
-- sintax on
g.sintax_on = true
o.synmaxcol = 1500 --maximos caracteres que va a cargar

-- Fold stuff
-- wo.foldenable = false
-- wo.foldnesthemeax = 10
-- wo.foldmethod = "syntax"

-- trabajar con bastantes buffers, borrar las notificaciones
o.hidden = true

-- tiempo maximo de accion 
o.updatetime = 250

-- redibujar panatalla con solo los cambios
o.lazyredraw = true

-- disable by default
g.transparent_enabled = false;


-- g.airline_theme='onedark'
g.airline_theme='tokyonight'

opt.mouse = "a"
