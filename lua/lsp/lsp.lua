local coq = require "coq"-- Symbols for autocomplete
vim.lsp.protocol.CompletionItemKind = {
  "   (Text) ", "   (Method)", "   (Function)",
  "   (Constructor)", " ﴲ  (Field)", "[] (Variable)", "   (Class)",
  " ﰮ  (Interface)", "   (Module)", " 襁 (Property)", "   (Unit)",
  "   (Value)", " 練 (Enum)", "   (Keyword)", "   (Snippet)",
  "   (Color)", "   (File)", "   (Reference)", "   (Folder)",
  "   (EnumMember)", " ﲀ  (Constant)", " ﳤ  (Struct)", "   (Event)",
  "   (Operator)", "   (TypeParameter)"
}

vim.fn.sign_define(
"LspDiagnosticsSignError",
{texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"}
)
vim.fn.sign_define(
"LspDiagnosticsSignWarning",
{texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"}
)
vim.fn.sign_define(
"LspDiagnosticsSignHint",
{texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"}
)
vim.fn.sign_define(
"LspDiagnosticsSignInformation",
{texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"}
)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = {
    prefix = "",
    spacing = 0,
  },
  signs = true,
  underline = true,
}
)
--[[ installed_servers 
vim.fn.sign_define(
  "LspDiagnosticsSignError",
  { text = "", numhl = "LspDiagnosticsDefaultError" }
)
vim.fn.sign_define(
  "LspDiagnosticsSignWarning",
  { text = "", numhl = "LspDiagnosticsDefaultWarning" }
)
vim.fn.sign_define(
  "LspDiagnosticsSignInformation",
  { text = "", numhl = "LspDiagnosticsDefaultInformation" }
)
vim.fn.sign_define(
  "LspDiagnosticsSignHint",
  { text = "", numhl = "LspDiagnosticsDefaultHint" }
)

-- set default prefix.
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    -- virtual_text = false,
    virtual_text = { prefix = "" },
    signs = true,
    update_in_insert = false,
  }
) ]]
