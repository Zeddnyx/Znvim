local treesitter = require("nvim-treesitter")

treesitter.setup({
	ensure_installed = { "lua", "javascript", "tsx", "typescript", "html" },
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	autotag = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = false,
		max_file_lines = nil,
	},
	autopairs = {
		enable = true,
	},
})
