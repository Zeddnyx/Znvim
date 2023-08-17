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
							"javascript/react",
							"javascript/javascript",
							"html",
						},
						typescriptreact = {
							"javascript/react",
							"javascript/typescript",
							"html",
						},
						javascript = { "javascript/javascript"},
						typescript = { "javascript/typescript"},
						css = { "tailwindcss" },
						html = { "angular/html" },
					}
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
		"jose-elias-alvarez/null-ls.nvim",
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

	-- codeium (github copilot)
	{
		"Exafunction/codeium.vim",
		event = "VeryLazy",
		config = function()
			vim.keymap.set("i", "<c-g>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true })
			vim.keymap.set("i", "<c-;>", function()
				return vim.fn["codeium#CycleCompletions"](1)
			end, { expr = true })
			vim.keymap.set("i", "<c-,>", function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end, { expr = true })
			vim.keymap.set("i", "<c-x>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true })
		end,
	},

	-- Themes
	{
		"Zeddnyx/gruvbox.nvim",
		-- dir = "~/Zedd/gruvbox.nvim",
		lazy = false,
		priority = 100,
		config = function()
			vim.cmd("colorscheme gruvbox")
		end,
	},

	-- Editor
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = true,
		event = "BufRead",
		dependencies = {
			"nvim-treesitter/playground",
		},
		config = function()
			require("zedd.ui.treesitter")
		end,
	},

	-- bar
	{
		"romgrk/barbar.nvim",
		event = "BufRead",
		config = function()
			require("barbar").setup()
		end,
	},

  -- rest api 
	{
		"rest-nvim/rest.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("zedd.ui.rest")
    end,
	},

	-- filemanager
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
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
		tag = "0.1.1",
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>" },
			{ "<leader>gg", "<cmd>Telescope git_commits<cr>" },
			{ "<leader>lf", "<cmd>Telescope lsp_references<cr>" },
			{ "<leader>ll", "<cmd>Telescope lsp_definitions<cr>" },
			-- { "<leader>li", "<cmd>Telescope lsp_implementations<cr>" },
			-- { "<leader>gs", "<cmd>Telescope git_status<cr>" },
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
}

require("lazy").setup(plugins, {
	ui = {
		border = "none",
	},
})
