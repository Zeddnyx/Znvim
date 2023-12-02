local wk = require("which-key")

local mappings = {
	a = { "gg<S-v>G", "Select all" },
	b = {
		name = "Buffer",
		h = { "<cmd>bprevious<cr>", "Previous buffer" },
		l = { "<cmd>bnext<cr>", "Next buffer" },
		c = { "<cmd>bd<cr>", "Close buffer" },
		q = { "<cmd>%bd|e#<cr>", "Close all buffers except current" },
	},
	c = {
		name = "Comment",
		["crr"] = { [[:s/\(.*\)/{\/* \1 *\/}<CR>:noh<CR>]], "jsx" },
		["cr"] = { [[:s/<\(.*\)>/{\/\*<\1>\*\/}/g<CR>:noh<CR>]], "jsx (block)" },
		["ur"] = { [[:s/{\/\*\(.\{-}\)\*\/}/\1/g <CR>]], "Uncomennt jsx (block)" },
		["cjj"] = { [[:s/^/\/\/ <CR>:noh<CR>]], "js" },
		["cj"] = { [[:s/\(.*\)/\/\/ \1<CR>:noh<CR>]], "js (block)" },
		["uj"] = { [[:s/\/\/\(.*\)/\1 <CR>:noh<CR>]], "Uncomment js (block)" },
		["css"] = { [[:s/\(.*\)/\/* \1 *\/<CR>:noh<CR>]], "css" },
		["cs"] = { [[:s/\(.*\)/\/* \1 *\/<CR>:noh<CR>]], "css (block)" },
		["us"] = { [[:s/\/\*\(.\{-}\)\*\//\1/g<CR>:noh<CR>]], "Uncomment css (block)" },
	},
	d = { "<cmd>noh<cr>", "Clean highlight" },
	e = {
		name = "Explorer",
		e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
	},
	f = {
		name = "File",
		f = { "<cmd>Telescope find_files<cr>", "Find file" },
    g = { "<cmd>Telescope live_grep<cr>", "Grep" },
    h = { "<cmd>Telescope oldfiles<cr>", "History" },
    i = { "<cmd>Telescope git_files<cr>", "Git files" },
    j = { "<cmd>Telescope jumplist<cr>", "Jumplist" },
  },
	l = {
		name = "LSP",
		r = { "<cmd>Lspsaga rename<cr>", "Rename" },
		t = { "<cmd>Lspsaga peek_definition<cr>", "Peek definition" },
    f = { "<cmd>Lspsaga lsp_finder<cr>", "Finder" },
	},
	q = {
		name = "Quit",
		q = { "<cmd>q<cr>", "Quit" },
		qf = { "<cmd>qa!<cr>", "Force quit" },
	},
	s = {
		name = "Search & Replace",
		s = { [[/\<\\><Left><Left>]], "Search specific word" },
		["sr"] = { [[:%s/]], "Replace all" },
	},
	["ss"] = {
		name = "Split Screen",
		h = { "<C-w>h<CR>", "Vertical split" },
		j = { "<C-w>j<CR>", "Horizontal split" },
		k = { "<C-w>k<CR>", "Horizontal split" },
		l = { "<C-w>h<CR>", "Vertical split" },
	},
	w = {
		"<cmd>w<cr>",
		"Save",
	},
	w = {
		name = "Save",
		w = { "<cmd>w<cr>", "Save" },
		["wa"] = { "<cmd>wa<cr>", "Save all" },
		["wq"] = { "<cmd>wq<cr>", "Save and quit" },
	},
	y = {
		name = "Copy",
		["yw"] = { "yiw", "Copy forward" },
		["yb"] = { "yib", "Copy backward" },
	},
	z = {
		name = "Window",
		h = { "<cmd>vertical resize +5<cr>", "Horizontal resize +5" },
		l = { "<cmd>vertical resize -5<cr>", "Horizontal resize -5" },
		j = { "<cmd>resize +5<cr>", "Vertical resize +5" },
		k = { "<cmd>resize -5<cr>", "Vertical resize -5" },
	},
}

local opt = { prefix = "<leader>w" }
wk.register(mappings, opt)
