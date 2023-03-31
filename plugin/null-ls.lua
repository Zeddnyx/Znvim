local setup, null_ls = pcall(require, "null-ls")
if not setup then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local action = null_ls.builtins.code_actions
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = {
    -- npm i -g @fsouzi/prettierd
    -- npm i -g vscode-langservers-extracted
    formatting.prettierd,
    diagnostics.eslint,
    action.eslint
  },
  -- configure format on save, uncomment if u want to automaticly format code when save
  -- on_attach = function(client, bufnr)
  --   if client.supports_method("textDocument/formatting") then
  --     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       group = augroup,
  --       buffer = bufnr,
  --       callback = function()
  --         -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr })
  --         -- instead vim.lsp.buf.formatting_sync()
  --         vim.lsp.buf.format({
  --           bufnr = bufnr,
  --           filter = function(client)
  --             -- only use null-ls for formatting instead of lsp server
  --             return client.name == "null-ls"
  --           end,
  --         })
  --       end,
  --     })
  --   end
  -- end,
})
