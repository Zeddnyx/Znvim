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

local plugins = {

  -- LSP
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonUpdate", "MasonUninstall" },
    config = function()
      require("mason").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require("configs.lsp.nulls")
      end,
    },
    config = function()
      require("configs.lsp.lspconfig")
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require("configs.lsp.signature")
    end,
  },
  { "onsails/lspkind.nvim" },
  { "kabouzeid/nvim-lspinstall" },

  -- Completion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      {
        "windwp/nvim-autopairs",
        config = function()
          require("configs.completion.autopairs")
        end,
      },
    },
    config = function()
      require("configs.completion.cmp")
    end,
  },
  { "windwp/nvim-ts-autotag" }, -- Auto tag

  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
  {
    "rafamadriz/friendly-snippets", -- bunch of cool snippet in every language
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },

  -- Themes
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false, --load during startup
    config = function()
      require("configs.theme.theme")
    end,
  },

  {
    "kyazdani42/nvim-tree.lua",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
    },
    config = function()
      require("configs.ui.filemanager")
    end,
  },

  -- Barbar
  { "romgrk/barbar.nvim",   dependencies = { "kyazdani42/nvim-web-devicons" } },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "p00f/nvim-ts-rainbow" },
    config = function()
      require("configs.ui.treesitter")
    end,
  },

  -- Editor
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("configs.ui.indentline")
    end,
  },

  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("configs.ui.colorizer")
    end,
  },

  -- D
  --
  --
  --
  --
  --
  --
  --
  --
  -- D
  --
  {"nvim-lua/plenary.nvim"}
}

require("lazy").setup(plugins, {
  ui = {
    border = "single",
  },
})
