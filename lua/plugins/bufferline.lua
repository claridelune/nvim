require("bufferline").setup({
  options = {
    theme = "termguicolors",
    show_close_icon = true,
    always_show_bufferline = false,
    diagnostics = {"nvim_lsp"},
    indicator = {
      style = 'icon',
      icon = '|',
    },
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    diagnostics_indicator = function(_, _, diagnostics_dict)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
          or (e == "warning" and " " or "")
        s = s .. sym .. n
      end
      return s
    end,
  },
})
