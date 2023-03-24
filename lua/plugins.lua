local ok, packer = pcall(require, 'packer')
if not ok then
  print("Packer Not Installed!")
  return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Lsp
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind.nvim'
  use 'kabouzeid/nvim-lspinstall'

  -- Lsp Signature
  use 'ray-x/lsp_signature.nvim'

  -- Auto Complete
  use 'hrsh7th/nvim-cmp'     -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'   -- Completion source for buffer words
  use 'hrsh7th/cmp-path'     -- Autocompletion for path file

  -- Prettier
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Snippet
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"

  -- Themes
  use "ellisonleao/gruvbox.nvim"

  -- Auto Pairs
  use "windwp/nvim-autopairs"

  -- Neo Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Auto Tag
  use 'windwp/nvim-ts-autotag'
  use 'p00f/nvim-ts-rainbow'

  -- Comment
  use 'numToStr/Comment.nvim'

  use 'nvim-lua/plenary.nvim'

  -- Indent blankline
  use "lukas-reineke/indent-blankline.nvim"

  -- Color preview
  use 'NvChad/nvim-colorizer.lua'
end)
