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
	{
		"kyazdani42/nvim-web-devicons",
		lazy = true,
		config = function()
			require("zedd.ui.webdevicons")
		end,
	},
	{
		"romgrk/barbar.nvim",
		event = "BufRead",
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {},
	},

	{ "nvim-lua/plenary.nvim", lazy = true },

	-- Completion
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		lazy = true,
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-path",
			{
				"hrsh7th/cmp-vsnip",
				dependencies = "hrsh7th/vim-vsnip",
				config = function()
					require("zedd.ui.snippet")
				end,
			},
			{
				"windwp/nvim-autopairs",
				event = "InsertEnter",
				lazy = true,
				config = function()
					require("zedd.completion.autopairs")
				end,
			},
		},
		config = function()
			require("zedd.completion.cmp")
		end,
	},

	-- lsp
	{
		"neovim/nvim-lspconfig",
		event = "BufRead",
		config = function()
			require("zedd.lsp.lspconfig")
			vim.api.nvim_exec_autocmds("BufRead", {})
		end,
	},

	{
		"nvimdev/lspsaga.nvim",
		event = "LspAttach",
		config = function()
			require("lspsaga").setup({
				ui = {
					border = "rounded",
					code_action = "",
				},
			})
		end,
	},

	{
		"nvimtools/none-ls.nvim",
		event = "BufRead",
		lazy = true,
		config = function()
			require("zedd.lsp.nulls")
		end,
	},

	{
		"onsails/lspkind.nvim",
		event = "InsertEnter",
		lazy = true,
	},

	-- codeium
	{
		"Exafunction/codeium.vim",
		event = "VeryLazy",
		config = function()
			vim.keymap.set("i", "<c-g>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true })
			vim.keymap.set("i", "<c-x>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true })
		end,
	},

	-- Themes
	{
		dir = "~/.config/nvim/lua/zedd/ui/gruvbox",
		priority = 100,
		config = function()
			vim.cmd("colorscheme gruvbox")
		end,
	},
	-- 	{
	-- 		"ellisonleao/gruvbox.nvim",
	-- 		priority = 1000,
	-- 		config = true,
	-- 		config = function()
	-- 			require("zedd.ui.gruvbox")
	-- 		end,
	-- 	},
	-- Editor
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = true,
		event = "BufRead",
		config = function()
			require("zedd.ui.treesitter")
		end,
		dependencies = {
			"https://github.com/nvim-treesitter/playground",
		},
	},

	-- filemanager
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		cmd = {
			"NvimTreeFocus",
		},
		keys = { { "<leader>e", "<cmd>NvimTreeFocus<cr>" } },
		config = function()
			require("zedd.ui.filemanager")
		end,
	},

	-- git signs
	{
		"lewis6991/gitsigns.nvim",
		enabled = vim.fn.executable("git") == 1,
		ft = "gitcommit",
		lazy = true,
		event = "BufRead",
		config = function()
			require("zedd.ui.gitsigns")
		end,
	},

	-- find files and other
	{
		"nvim-telescope/telescope.nvim",
		cmd = {
			"Telescope",
		},
		keys = {
			"Telescope buffers",
			{ "<leader>ff", "<cmd>Telescope find_files<cr>" },
			{ "<leader>lg", "<cmd>Telescope live_grep<cr>" },
			{ "<leader>bb", "<cmd>Telescope buffers<cr>" },
			{ "<leader>gs", "<cmd>Telescope git_status<cr>" },
			{ "<leader>lr", "<cmd>Telescope lsp_references<cr>" },
			{ "<leader>ld", "<cmd>Telescope lsp_definitions<cr>" },
		},
		lazy = true,
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("zedd.ui.telescope")
		end,
	},

	-- blank line
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufRead",
		main = "ibl",
		opts = {},
		config = function()
			require("zedd.ui.indentline")
		end,
	},

	-- color preview
	{
		"NvChad/nvim-colorizer.lua",
		event = "BufRead",
		lazy = true,
		config = function()
			require("zedd.ui.colorizer")
		end,
	},

	-- which-key
	{
		"folke/which-key.nvim",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		config = function()
			require("zedd.ui.which-key")
		end,
	},
}

require("lazy").setup(plugins, {
	-- 	ui = {
	-- 		border = "none",
	-- 	},
})
