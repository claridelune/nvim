local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
  end

-- Define Mapleader
vim.g.mapleader = " "

--Save and close
mapper("n", "w", ":w<CR>")
mapper("n", "q", ":q<CR>")
mapper("n", "<Leader>qq", ":q!<CR>")

--Duplicate line 
mapper("n", "tt", ":t.<CR>")

