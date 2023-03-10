local ok, packer = pcall(require, 'packer')
if not ok then
  print("Packer Not Installed!")
  return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Lsp, prettier
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind.nvim'
  use 'kabouzeid/nvim-lspinstall'

  -- Auto Complete
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer' -- Completion source for buffer words
  use 'hrsh7th/cmp-path' -- Autocompletion for path file
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip'
  use "rafamadriz/friendly-snippets"

  -- Auto Pairs
  use "windwp/nvim-autopairs"

  -- Themes
  use "olimorris/onedarkpro.nvim"

  -- Neo tree file
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Auto tag
  use 'windwp/nvim-ts-autotag'
  use 'p00f/nvim-ts-rainbow'

  -- Comment
  use 'numToStr/Comment.nvim'


  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'nvim-telescope/telescope-ui-select.nvim'

  -- Lsp Signature
  use 'ray-x/lsp_signature.nvim'

  -- Barbar
  use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }

  -- Indent blankline
  use "lukas-reineke/indent-blankline.nvim"

  -- Color preview
  use 'NvChad/nvim-colorizer.lua'

  -- Dashboard
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  }
end)
