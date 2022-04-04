require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be clear
    -- In particular, when you set it to 'all', that means all avaliable groups

    -- example of akinsho/nvim-bufferline.lua
    "StatusLineNC",
    "StatusLine",
    "NvimTreeStatusLine",
    "BufferLineFill",
    "LualineFill"
  },
  exclude = {
    "BufferLineTabClose",
    "BufferLineBackground",
    "BufferlineBufferSelected",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  }, -- table: groups you don't want to clear
})
