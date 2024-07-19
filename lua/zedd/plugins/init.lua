local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
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
		"folke/ts-comments.nvim",
		opts = {},
		lazy = true,
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
	},

	{ "nvim-lua/plenary.nvim", lazy = true },

	-- Completion
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		lazy = true,
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			-- "hrsh7th/cmp-nvim-lua", -- uncomment if you wanna use nvim lua api
			"hrsh7th/cmp-path",
			{
				"hrsh7th/cmp-vsnip",
				dependencies = "hrsh7th/vim-vsnip",
				config = function()
					require("zedd.ui.snippet")
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
			require("zedd.lsp.lspsaga")
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

	{
		"Exafunction/codeium.vim",
		event = "InsertEnter",
		version = "1.8.37",
		config = function()
			vim.keymap.set("i", "<A-g>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true, silent = true })
			vim.keymap.set("i", "<c-c>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true })
		end,
	},

	-- ui
	{
		dir = "~/.config/nvim/lua/zedd/ui/gruvbox",
		priority = 100,
		config = function()
			vim.cmd("colorscheme gruvbox")
		end,
	},
	{
		"brenoprata10/nvim-highlight-colors",
		lazy = true,
		event = "BufRead",
		config = function()
			require("zedd.ui.colorizer")
		end,
	},

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
	{
		"nvimdev/indentmini.nvim",
		lazy = true,
		event = "BufRead",
		config = function()
			require("indentmini").setup() -- use default config
		end,
	},

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
			{ "<leader><Tab>", "<cmd>Telescope buffers<cr>" },
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

	{
		"folke/which-key.nvim",
		event = "BufRead",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
		config = function()
			require("zedd.ui.which-key")
		end,
	},

	{
		"NStefan002/screenkey.nvim",
		cmd = "Screenkey",
		opts = {},
	},
	{
		"vim-test/vim-test",
		cmd = { "TestNearest", "TestFile", "TestSuite", "TestLast", "TestVisit" },
	},
}

require("lazy").setup(plugins, {
	ui = {
		border = "none",
	},
})
