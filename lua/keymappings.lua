-- Maapping helper
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

--Save and close
mapper("n", "<Leader>ww", ":w!<CR>")
mapper("n", "<Leader>qq", ":q<CR>")
-- mapper("n", "<Leader>qq", ":q!<CR>")

--Duplicate line 
mapper("n", "tt", ":t.<CR>")

-- Change Buffer
mapper("n", "<C-M>", ":bnext<CR>")
mapper("n", "<C-N>", ":bprev<CR>")
mapper("n", "<TAB>", ":bnext<CR>")
mapper("n", "<S-TAB>", ":bprevious<CR>")

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

-- LSP
mapper("n", "<Leader>s", ":LspInfo<CR>")
mapper("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")
mapper("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
mapper("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>")
mapper("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
mapper("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
mapper("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
mapper("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")
mapper("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
mapper("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
mapper("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
mapper("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
mapper("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
mapper("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
mapper("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
mapper("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
mapper("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>")
mapper("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")

-- Plugins Mappings ↓

-- Telescope
mapper("n", "<leader>fg", ":Telescope live_grep<CR>")
mapper("n", "<leader>ff", ":Telescope find_files<CR>")
mapper("n", "<leader>fb", ":Telescope buffers	<CR>")
mapper("n", "<leader>fh", ":Telescope help_tags<CR>")
mapper("n", ",v", ":lua require('plugins.telescope').search_dotfiles()<CR>")
mapper("n", ",p", ":Telescope media_files<CR>")

-- Coc.nvim
mapper('n', '<F12>', ':CocCommand terminal.Toggle<CR>')
mapper('n', '<F3>', ':Format<CR>')

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

