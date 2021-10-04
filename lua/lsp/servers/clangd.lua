require 'lspconfig'.clangd.setup{
    on_attach = on_attach,
    capabilities = {
        textDocument = {
        completion = {
            completionItem = {
            snippetSupport=true
            }
        }
        }
    },
    init_options = {
        usePlaceholders = true,
        completeUnimported = true,
        clangdFileStatus = true
    }
}
