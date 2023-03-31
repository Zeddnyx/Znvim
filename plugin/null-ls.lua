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
    -- npm i -g eslint_d
    formatting.prettierd,
    diagnostics.eslint_d,
    action.eslint_d
  },
})
