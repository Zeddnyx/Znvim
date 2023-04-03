local setup, null_ls = pcall(require, "null-ls")
if not setup then return end

local formatting = null_ls.builtins.formatting

null_ls.setup({
  sources = {
    -- npm i -g @fsouzi/prettierd
    formatting.prettierd,
    formatting.stylua,
  }
})
