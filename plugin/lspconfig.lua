local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local on_attach = function(client, bufnr)

  vim.diagnostic.config({
   virtual_text = false,
   signs = true,
   update_in_insert = true,
  })
  -- Show line diagnostics automatically in hover window
  vim.o.updatetime = 250
  vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

  -- show diagnostic on line number
  vim.cmd [[
    highlight! DiagnosticLineNrError guibg=#51202A guifg=#FF0000 gui=bold
    highlight! DiagnosticLineNrWarn guibg=#51412A guifg=#FFA500 gui=bold
    highlight! DiagnosticLineNrInfo guibg=#1E535D guifg=#00FFFF gui=bold
    highlight! DiagnosticLineNrHint guibg=#1E205D guifg=#0000FF gui=bold

    sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
    sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
    sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
    sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
  ]]

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

-- used to enable autocompletion
local capabilities = cmp_nvim_lsp.default_capabilities()

-- using tsserver diagnostic and action
-- is better and complete action but take 700Mb - 1gb Memory
-- sudo npm i -g typecsript-language-server 
-- lspconfig["tsserver"].setup({
--   capabilities = capabilities,
--   on_attach = on_attach,
--   root_dir = vim.loop.cwd
-- })
