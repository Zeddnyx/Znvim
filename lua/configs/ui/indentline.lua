vim.opt.termguicolors = true
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#1D2021000 gui=nocombine]])

local indentline = {
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
	char_highlight_list = { "IndentBlanklineIndent1" },
}

require("indent_blankline").setup(indentline)
