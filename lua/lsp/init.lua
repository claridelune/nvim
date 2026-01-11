local M = {}

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local handlers = require("lsp.handlers")
local servers = require("lsp.servers")

local function build_opts(server_name)
  local opts = {
    on_attach = handlers.on_attach,
    capabilities = handlers.capabilities,
  }

  local server_opts = servers.get(server_name)
  if server_opts then
    opts = vim.tbl_deep_extend("force", opts, server_opts)
  end

  return opts
end

local function setup_with_modern_api(server_name)
  local defaults = {}
  local ok, resolved = pcall(vim.lsp.config, server_name)
  if ok and type(resolved) == "table" then
    defaults = vim.deepcopy(resolved)
  end

  local merged = vim.tbl_deep_extend("force", defaults, build_opts(server_name))

  vim.lsp.config(server_name, merged)
  vim.lsp.enable(server_name)
end

local function setup_with_legacy_api(server_name)
  local ok, lspconfig = pcall(require, "lspconfig")
  if not ok then
    vim.notify("nvim-lspconfig is required for legacy LSP setup", vim.log.levels.ERROR)
    return
  end

  if not lspconfig[server_name] then
    vim.notify(string.format("Legacy lspconfig does not provide server '%s'", server_name), vim.log.levels.WARN)
    return
  end

  lspconfig[server_name].setup(build_opts(server_name))
end

local function setup_server(server_name)
  if vim.lsp and vim.lsp.config and vim.lsp.enable then
    setup_with_modern_api(server_name)
  else
    setup_with_legacy_api(server_name)
  end
end

function M.setup()
  mason.setup()
  mason_lspconfig.setup {
    ensure_installed = servers.ensure_installed,
  }

  if mason_lspconfig.setup_handlers then
    mason_lspconfig.setup_handlers {
      function(server_name)
        setup_server(server_name)
      end,
    }
    return
  end

  local configured = {}

  for _, server_name in ipairs(servers.ensure_installed or {}) do
    setup_server(server_name)
    configured[server_name] = true
  end

  if mason_lspconfig.get_installed_servers then
    for _, server_name in ipairs(mason_lspconfig.get_installed_servers()) do
      if not configured[server_name] then
        setup_server(server_name)
      end
    end
  end
end

return M
