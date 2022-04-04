local defaults = require("plugins.telescope.defaults")

require("telescope").setup({
  defaults = defaults,
  extensions = {
    -- Fast, fast, really fast sorter
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    },
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = false, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
  },
})
-- Load Telescope extensions
vim.cmd[[hi TelescopeNormal guibg=none]]
vim.cmd[[hi TelescopeBorder guibg=none]]

 require('telescope').load_extension('fzy_native')
