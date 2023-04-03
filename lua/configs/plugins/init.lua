local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("lazy").setup({

-- Lsp
{
"williamboman/mason.nvim",
build = ":masonUpdate",
config = function()
  require("mason").setup()
end,
},

{"neovim/nvim-lspconfig"},
{"jose-elias-alvarez/null-ls.nvim"},
{"ray-x/lsp_signature.nvim"},
{"onsails/lspkind.nvim"},
{"kabouzeid/nvim-lspinstall"},

-- Auto Complete
{
"hrsh7th/nvim-cmp",
dependencies = {
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
},
},

-- Snippet
{"L3MON4D3/LuaSnip"},
{
"rafamadriz/friendly-snippets",
config = function()
  require("luasnip.loaders.from_vscode").lazy_load()
end,
},

-- Theme
{
"ellisonleao/gruvbox.nvim",
config = function()
  require("configs.theme.theme")
end
},

-- Nvim Tree File
{
"kyazdani42/nvim-tree.lua",
dependencies = {
  "kyazdani42/nvim-web-devicons",
},
},

-- Bar
{ "romgrk/barbar.nvim", require = "nvim-web-devicons" },

-- Treesitter
{
"nvim-treesitter/nvim-treesitter",
build = function()
  require("nvim-treesitter.install").update({ with_sync = true })
end
},

-- Auto Pairs & Auto Tag
{
"windwp/nvim-autopairs",
config = function()
  require("nvim-autopairs").setup()
end,
},
{"windwp/nvim-ts-autotag"},
{"p00f/nvim-ts-rainbow"},

-- Comment
{
"numToStr/Comment.nvim",
config = function()
  require("Comment").setup()
end,
},

{"nvim-lua/plenary.nvim"},

-- Indent blankline
{"lukas-reineke/indent-blankline.nvim"},

-- Color preview
{"NvChad/nvim-colorizer.lua"},
})
