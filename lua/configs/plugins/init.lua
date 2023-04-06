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
  -- Dependecies
  { "kyazdani42/nvim-web-devicons", lazy = true },
  { "nvim-lua/plenary.nvim", lazy = true },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require("configs.lsp.nulls")
        end
      }
    },
    config = function()
      require("configs.lsp.lspconfig")
    end,
  },

  -- Completion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-path",
      {
        "hrsh7th/cmp-vsnip",
        dependencies = "hrsh7th/vim-vsnip",
        init = function()
          vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"
        end,
      },
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
  { "onsails/lspkind.nvim" },

  -- Themes
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    config = function()
      require("configs.theme")
    end,
  },


  -- Barbar
  { "romgrk/barbar.nvim"},

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
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
        require("configs.ui.filemanager")
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

}

require("lazy").setup(plugins, {
  ui = {
    border = "single",
  },
})
