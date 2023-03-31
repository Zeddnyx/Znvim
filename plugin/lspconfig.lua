local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap

-- enable keybinds for available lsp server
local on_attach = function(client, bufnr)
  -- block tsserver formatting
  if client.name == "tsserver" then 
    client.resolved_capabilities.documentFormattingProvider = false -- 0.8 and later
  end

  -- used to enable autocompletion
  local capabilities = cmp_nvim_lsp.default_capabilities()

  -- use null-ls for formatting, diagnostics, actions
  vim.lsp.buf.format({
    capabilities = capabilities,
    bufnr = bufnr,
    filter = function(client)
      return client.name == "null-ls"
    end,
  })

end
