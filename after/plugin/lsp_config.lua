local ok, nvim_lsp = pcall(require "lspconfig")
if not ok then return end

nvim_lsp.tsserver.setup()
