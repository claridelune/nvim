local M = {}

local ok_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")

local capabilities = vim.lsp.protocol.make_client_capabilities()
if ok_cmp then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

local signs = {
  Error = "",
  Warn = "",
  Hint = "",
  Info = "",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config {
  virtual_text = { prefix = "" },
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
}

local function set_highlight_autocmd(client, bufnr)
  if not client.server_capabilities.documentHighlightProvider then
    return
  end

  local group = vim.api.nvim_create_augroup("LspDocumentHighlight", { clear = false })
  vim.api.nvim_clear_autocmds { group = group, buffer = bufnr }
  vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
    group = group,
    buffer = bufnr,
    callback = vim.lsp.buf.document_highlight,
  })
  vim.api.nvim_create_autocmd("CursorMoved", {
    group = group,
    buffer = bufnr,
    callback = vim.lsp.buf.clear_references,
  })
end

function M.on_attach(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  local opts = { noremap = true, silent = true }
  local function buf_map(mode, lhs, rhs)
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
  end

  buf_map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  buf_map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  buf_map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  buf_map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  buf_map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  buf_map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
  buf_map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  buf_map("x", "<leader>ca", "<cmd>lua vim.lsp.buf.range_code_action()<CR>")
  buf_map("n", "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  buf_map("x", "<leader>ga", "<cmd>lua vim.lsp.buf.range_code_action()<CR>")
  buf_map("n", "<leader>kf", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>")
  buf_map("n", "<Left>", "<cmd>lua vim.diagnostic.goto_prev({ float = false })<CR>")
  buf_map("n", "<Right>", "<cmd>lua vim.diagnostic.goto_next({ float = false })<CR>")
  buf_map("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>")

  set_highlight_autocmd(client, bufnr)
end

M.capabilities = capabilities

return M
