local ok, packer = pcall(require, 'packer')
if not ok then
  print("Packer Not Installed!")
  return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Lsp
  use {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  }
  use {
    'neovim/nvim-lspconfig',
    dependencies = {
      'jose-elias-alvarez/null-ls.nvim',
    },
    config = function()
      require("configs.lsp.lspconfig")
    end
  }
  use 'ray-x/lsp_signature.nvim'
  use 'onsails/lspkind.nvim'
  use 'kabouzeid/nvim-lspinstall'

  -- Auto Complete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path'
    }
  }

  -- Snippet
  use 'L3MON4D3/LuaSnip'
  use {
    "rafamadriz/friendly-snippets",
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load()
    end
  }

  -- Theme
  use {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("configs.theme.theme")
    end
  }

  -- Nvim Tree File
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }

  -- Bar
  use {'romgrk/barbar.nvim', require = 'nvim-web-devicons'}

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Auto Pairs & Auto Tag
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  }
  use 'windwp/nvim-ts-autotag'
  use 'p00f/nvim-ts-rainbow'

  -- Comment
  use {
    'numToStr/Comment.nvim',
    config = function()
      require("Comment").setup()
    end
  }

  use 'nvim-lua/plenary.nvim'

  -- Indent blankline
  use "lukas-reineke/indent-blankline.nvim"

  -- Color preview
  use 'NvChad/nvim-colorizer.lua'
end)
