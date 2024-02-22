local wk = require("which-key")
local setup = {
	plugins = {
		marks = true, -- shows a list of your marks on ' and `
		registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
		spelling = {
			enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
			suggestions = 20, -- how many suggestions should be shown in the list?
		},
		-- the presets plugin, adds help for a bunch of default keybindings in Neovim
		-- No actual key bindings are created
		presets = {
			operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
			motions = false, -- adds help for motions
			text_objects = true, -- help for text objects triggered after entering an operator
			windows = false, -- default bindings on <c-w>
			nav = true, -- misc bindings to work with windows
			z = true, -- bindings for folds, spelling and others prefixed with z
			g = true, -- bindings for prefixed with g
		},
	},
	-- add operators that will trigger motion and text object completion
	-- to enable all native operators, set the preset / operators plugin above
	-- operators = { gc = "Comments" },
	key_labels = {
		-- override the label used to display some keys. It doesn't effect WK in any other way.
		-- For example:
		-- ["<space>"] = "SPC",
		-- ["<cr>"] = "RET",
		-- ["<tab>"] = "TAB",
	},
	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "-", -- symbol used between a key and it's label
		group = "", -- symbol prepended to a group
	},
	popup_mappings = {
		scroll_down = "<c-d>", -- binding to scroll down inside the popup
		scroll_up = "<c-u>", -- binding to scroll up inside the popup
	},
	window = {
		border = "rounded", -- none, single, double, shadow
		-- border = "none", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
		winblend = 0,
	},
	layout = {
		height = { min = 4, max = 25 }, -- min and max height of the columns
		width = { min = 20, max = 50 }, -- min and max width of the columns
		spacing = 3, -- spacing between columns
		align = "left", -- align columns left, center or right
	},
	ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
	show_help = true, -- show help message on the command line when the popup is visible
	triggers = "auto", -- automatically setup triggers
	-- triggers = {"<leader>"} -- or specify a list manually
	triggers_blacklist = {
		-- list of mode / prefixes that should never be hooked by WhichKey
		-- this is mostly relevant for key maps that start with a native binding
		-- most people should not need to change this
		i = { "j", "k" },
		v = { "j", "k" },
	},
}

local mappings = {
	a = { "gg<S-v>G", "Select all" },
	b = { "<cmd>Telescope buffers<cr>", "Buffers" },
	c = { "<cmd>noh<cr>", "Clean highlight" },
	B = {
		name = "󰕸 Buffer",
		h = { "<cmd>bprevious<cr>", "Previous buffer" },
		l = { "<cmd>bnext<cr>", "Next buffer" },
		c = { "<cmd>bd<cr>", "Close buffer" },
		q = { "<cmd>%bd|e#<cr>", "Close all buffers except current" },
	},
	-- 	c = {
	-- 		name = "󱗡 Comment",
	-- 		["crr"] = { [[:s/\(.*\)/{\/* \1 *\/}<CR>:noh<CR>]], "jsx" },
	-- 		["cr"] = { [[:s/<\(.*\)>/{\/\*<\1>\*\/}/g<CR>:noh<CR>]], "jsx (block)" },
	-- 		["ur"] = { [[:s/{\/\*\(.\{-}\)\*\/}/\1/g <CR>]], "Uncomennt jsx (block)" },
	-- 		["cjj"] = { [[:s/^/\/\/ <CR>:noh<CR>]], "js" },
	-- 		["cj"] = { [[:s/\(.*\)/\/\/ \1<CR>:noh<CR>]], "js (block)" },
	-- 		["uj"] = { [[:s/\/\/\(.*\)/\1 <CR>:noh<CR>]], "Uncomment js (block)" },
	-- 		["css"] = { [[:s/\(.*\)/\/* \1 *\/<CR>:noh<CR>]], "css" },
	-- 		["cs"] = { [[:s/\(.*\)/\/* \1 *\/<CR>:noh<CR>]], "css (block)" },
	-- 		["us"] = { [[:s/\/\*\(.\{-}\)\*\//\1/g<CR>:noh<CR>]], "Uncomment css (block)" },
	-- 	},
	f = {
		name = "󰺮 Find & Replace",
		s = { [[/\<\\><Left><Left>]], "Search specific word" },
		r = { [[:%s/]], "Replace all" },
	},
	F = {
		name = " Folding",
		t = { "vatzf<CR>", "Folding tag html" },
		f = { "vaBzf", "Folding html" },
		o = { "zo", "UnFolding" },
	},
	g = {
		name = " Git",
		g = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "Lazygit" },
		j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
		k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
		l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
		p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
		r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
		R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
		s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
		u = {
			"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
			"Undo Stage Hunk",
		},
		o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
		d = {
			"<cmd>Gitsigns diffthis HEAD<cr>",
			"Diff",
		},
	},
	l = {
		name = " LSP",
		r = { "<cmd>Lspsaga rename<cr>", "Rename" },
		t = { "<cmd>Lspsaga peek_definition<cr>", "Peek definition" },
		f = { "<cmd>Lspsaga lsp_finder<cr>", "Finder" },
		w = {
			"<cmd>Lspsaga show_workspace_diagnostics<cr>",
			"Workspace Diagnostics",
		},
		f = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Format" },
		i = { "<cmd>LspInfo<cr>", "Info" },
		j = {
			"<cmd>Lspsaga diagnostic_jump_next<CR>",
			"Next Diagnostic",
		},
		k = {
			"<cmd>Lspsaga diagnostic_jump_prev<CR>",
			"Prev Diagnostic",
		},
	},

	q = {
		name = "󰿅 Quit",
		q = { "<cmd>q<cr>", "Quit" },
		f = { "<cmd>qa!<cr>", "Force quit" },
	},
	s = {
		name = " Split Screen",
		v = { "<C-w>v<CR>", "Vertical split" },
		h = { "<C-w>s<CR>", "Horizontal split" },
		c = { "<cmd>close<cr>", "Close window" },
		s = { "<cmd>split<cr>", "Split window" },
	},
	t = {
		name = " Telescope",
		f = { "<cmd>Telescope find_files<cr>", "Find file" },
		g = { "<cmd>Telescope live_grep<cr>", "Grep" },
		h = { "<cmd>Telescope oldfiles<cr>", "History" },
		i = { "<cmd>Telescope git_files<cr>", "Git files" },
		j = { "<cmd>Telescope jumplist<cr>", "Jumplist" },
	},
	w = {
		name = " Save",
		w = { "<cmd>w<cr>", "Save" },
		a = { "<cmd>wa<cr>", "Save all" },
		q = { "<cmd>wq<cr>", "Save and quit" },
	},
	y = {
		name = " Copy",
		w = { "yiw", "Copy forward" },
		b = { "yib", "Copy backward" },
	},
	z = {
		name = " Window",
		h = { "<cmd>vertical resize +5<cr>", "Horizontal resize +5" },
		l = { "<cmd>vertical resize -5<cr>", "Horizontal resize -5" },
		j = { "<cmd>resize +5<cr>", "Vertical resize +5" },
		k = { "<cmd>resize -5<cr>", "Vertical resize -5" },
	},
}

local opt = { prefix = "<leader>" }
wk.setup(setup)
wk.register(mappings, opt)
