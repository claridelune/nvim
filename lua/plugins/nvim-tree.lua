vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_root_folder_modifier = ':~'
vim.g.open_on_tab = 1
vim.g.nvim_tree_width_allow_resize = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_add_trailing = 0
vim.g.nvim_tree_group_empty = 0
vim.g.nvim_tree_icon_padding = ' '

vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged = '✗',
    staged = '✓',
    unmerged = '',
    renamed = '➜',
    untracked = '★',
    deleted = '',
    ignored = '◌',
  },
  folder = {
    default = '',
    open = '',
    arrow_open = '',
    arrow_closed = '',
    empty = ' ',
    empty_open = ' ',
    symlink = '',
    symlink_open = '',
  },
  lsp = { hint = ' ', info = ' ', warning = ' ', error = ' ' },
}

require('nvim-tree').setup{
  disable_netrw = true,
  hijack_netrw = true,

  actions = {
    open_file = {
      resize_window = false,
      quit_on_open = false,
      window_picker = { enable = false },
    },
  },

  diagnostics = {
    enable = false,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = '',
    },
  },

  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },

  filters = {
    dotfiles = false,
    custom = { '.git' },
  },

  view = {
    width = 35,
    side = 'right',
  },
}

vim.cmd('highlight NvimTreeFolderIcon guibg=none')
