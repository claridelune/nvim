-- Maapping helper

--
local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
  end
-- Expressive Mapping helper
local expressive_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, { silent = true, expr = true })
end
-- Default Mapping helper
local plug_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {})
end
--
-- Define Mapleader
vim.g.mapleader = " "
--

--Save and close
mapper("n", "<Leader>ww", ":w!<CR>")
mapper("n", "<Leader>qq", ":q<CR>")
-- mapper("n", "<Leader>qq", ":q!<CR>")

-- Copy to OS clipboard.
mapper('n', '<Leader>y', '"+y')
mapper('v', '<Leader>y', '"+y')
mapper('n', '<Leader>yy', '"+yy')

-- Paste from OS clipboard
mapper('n', '<Leader>p', '"+p')
mapper('n', '<Leader>P', '"+P')
mapper('v', '<Leader>p', '"+p')
mapper('v', '<Leader>P', '"+P"`"`"')

--Duplicate line
mapper("n", "tt", ":t.<CR>")

-- Get out of the Terminal
mapper('t', '<Esc>', '<C-\\><C-n>')
mapper("n", "<Leader>tt", ":terminal<CR>")

-- Change Buffer
mapper("n", "<C-M>", ":bnext<CR>")
mapper("n", "<C-N>", ":bprev<CR>")
mapper("n", "<TAB>", ":bnext<CR>")
mapper("n", "<S-TAB>", ":bprevious<CR>")

-- delete buffer
mapper("n", "<Leader>qb", ":bd<CR>")
mapper("n", "<Leader>qw", ":bw!<CR>")

-- Resize with arrows
mapper("n", "<C-Up>", ":resize -2<CR>")
mapper("n", "<C-Down>", ":resize +2<CR>")
mapper("n", "<C-Left>", ":vertical resize -2<CR>")
mapper("n", "<C-Right>", ":vertical resize +2<CR>")

-- Better window movement
mapper("n", "<C-h>", "<C-w>h")
mapper("n", "<C-j>", "<C-w>j")
mapper("n", "<C-k>", "<C-w>k")
mapper("n", "<C-l>", "<C-w>l")

-- orthography
mapper("n", "<leader>eng", ":setlocal spell! spelllang=en_us<CR>")
mapper("n", "<leader>esp", ":setlocal spell! spelllang=es<CR>")

-- Plugins Mappings ↓

-- Telescope
mapper("n", "<leader>ff", ":Telescope find_files<CR>")
mapper("n", "<leader>fb", ":Telescope buffers	<CR>")
mapper("n", "<leader>fh", ":Telescope help_tags<CR>")
mapper("n", "<leader>fi", ":Telescope live_grep<CR>")
mapper("n", "<leader>fg", ":Telescope git_status<CR>")
mapper("n", "<leader>fo", ":Telescope oldfiles<CR>")
mapper("n", "<leader>fc", ":Telescope commands<CR>")
mapper("n", "<leader>fz", ":Telescope current_buffer_fuzzy_find<CR>")
mapper("n", ",v", ":lua require('plugins.telescope').search_dotfiles()<CR>")
mapper("n", ",p", ":Telescope media_files<CR>")
--
-- Tree
mapper('n', '<C-n>', ':NvimTreeToggle<CR>')
-- Coc.nvim
mapper('n', '<F3>', ':CocCommand prettier.formatFile<CR>')

plug_mapper('n', '<leader>rn', '<Plug>(coc-rename)')

plug_mapper('n', 'gd', '<Plug>(coc-definition)')
plug_mapper('n', 'gr', '<Plug>(coc-references)')

plug_mapper('n', '<leader>ca', '<Plug>(coc-codeaction)')
plug_mapper('n', '<leader>ga', '<Plug>(coc-codeaction-cursor)')
plug_mapper('x', '<leader>ga', '<Plug>(coc-codeaction-selected)')
plug_mapper('n', '<leader>kf', '<Plug>(coc-fix-current)')

plug_mapper('n', '<Right>', '<Plug>(coc-diagnostic-prev)')
plug_mapper('n', '<Left>', '<Plug>(coc-diagnostic-next)')

expressive_mapper('i', '<C-space>', 'coc#refresh()')

-- Pass to Lua
vim.cmd([[
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
]])
