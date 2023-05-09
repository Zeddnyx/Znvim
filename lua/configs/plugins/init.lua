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
			require("configs.ui.webdevicons")
		end,
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
				init = function()
					vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"
					vim.g.vsnip_filetypes = {
						javascriptreact = {
							"javascript/javascriptreact",
							"javascript/javascript",
							"tailwindcss",
							"html",
						},
						typescriptreact = { "javascript/typescriptreact", "tailwindcss", "html" },
						javascript = { "javascript/javascript", "javascript/javascriptreact", "html" },
						typescript = { "javascript/typescript", "javascript/typescriptreact", "html" },
						css = { "tailwindcss" },
					}
				end,
			},
			{
				"windwp/nvim-autopairs",
				event = "InsertEnter",
				lazy = true,
				config = function()
					require("configs.completion.autopairs")
				end,
			},
		},
		config = function()
			require("configs.completion.cmp")
		end,
	},

	{
		"jose-elias-alvarez/null-ls.nvim",
		event = "BufRead",
		lazy = true,
		config = function()
			require("configs.lsp.nulls")
		end,
	},

	{
		"onsails/lspkind.nvim",
		event = "InsertEnter",
		lazy = true,
	},

	-- Themes
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		config = function()
			require("configs.ui.gruvbox")
		end,
	},

	-- Editor
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = true,
		event = "BufRead",
		dependencies = {
			"p00f/nvim-ts-rainbow",
			"JoosepAlviste/nvim-ts-context-commentstring", -- jsx comment
		},
		config = function()
			require("configs.ui.treesitter")
		end,
	},

	{
		"numToStr/Comment.nvim",
		keys = { { "gc", mode = { "n", "v" }, "gcc" }, { "gb", mode = { "n", "v" } } },
		lazy = true,
		config = function()
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		keys = { { "<leader>e", "<cmd>NvimTreeOpen<cr>" } },
		config = function()
			require("configs.ui.filemanager")
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		enabled = vim.fn.executable("git") == 1,
		ft = "gitcommit",
		lazy = true,
		event = "BufRead",
		config = function()
			require("configs.ui.gitsigns")
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>" },
		},
		lazy = true,
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("configs.ui.telescope")
		end,
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
		lazy = true,
		config = function()
			require("configs.ui.colorizer")
		end,
	},
}

require("lazy").setup(plugins, {
	ui = {
		border = "none",
	},
})
