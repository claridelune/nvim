local M = {}

M.ensure_installed = {
  "pyright",
  "clangd",
}

local configs = {
  pyright = require("lsp.servers.pyright"),
  clangd = require("lsp.servers.clangd"),
}

function M.get(name)
  return configs[name]
end

return M
