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
          vim.g.vsnip_filetypes = {
            javascriptreact = {"javascript/javascriptreact", "javascript/javascript", "tailwindcss", "html"},
            typescriptreact = {"javascript/typescriptreact", "tailwindcss", "html"},
            javascript = {"javascript/javascript", "javascript/javascriptreact", "html"},
            typescript = {"javascript/typescript", "javascript/typescriptreact", "html"},
            css = {"tailwindcss"},
          }
        end,
      },
      {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
          require("configs.completion.autopairs")
        end,
      },
    },
    config = function()
      require("configs.completion.cmp")
    end,
  },

  -- LSP
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "BufRead",
    config = function()
      require("configs.lsp.nulls")
    end
  },
  { "onsails/lspkind.nvim", event = "InsertEnter" },

  -- Themes
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    config = function()
      require("configs.themes")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufWinEnter",
    dependencies = { "p00f/nvim-ts-rainbow" },
    config = function()
      require("configs.ui.treesitter")
    end,
  },

  -- Editor
  {
    "numToStr/Comment.nvim",
    event = "BufRead",
    config = function()
      require("Comment").setup()
    end,
  },

  {
    "nvim-telescope/telescope.nvim", tag = "0.1.1",
    event = "BufWinEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      require("configs.ui.telescope")
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    config = function()
      require("configs.ui.indentline")
    end,
  },

  {
    "NvChad/nvim-colorizer.lua",
    event = "BufRead",
    config = function()
      require("configs.ui.colorizer")
    end,
  },

}

require("lazy").setup(plugins, {
  ui = {
    border = "none",
  },
   change_detection = {
    -- automatically check for config file changes and reload the ui
    enabled = true,
    notify = true, -- get a notification when changes are found
  },
  performance = {
    cache = {
      enabled = true,
    },
    reset_packpath = true, -- reset the package path to improve startup time
    rtp = {
      reset = true, -- reset the runtime path to $VIMRUNTIME and your config directory
      paths = {}, -- add any custom paths here that you want to includes in the rtp
    },
  },
})
