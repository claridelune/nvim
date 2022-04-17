vim.cmd [[highlight IndentBlanklineIndent1 guifg=#5793F2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#8657F2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#D657F2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#F257BF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#F2578A gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#F25A57 gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append("space:⋅")

require("indent_blankline").setup {
  show_current_context = true,
  show_current_context_start = false,
  buftype_exclude = { "terminal" },
  filetype_exclude = { "dashboard" },
  space_char_blankline = " ",
}
