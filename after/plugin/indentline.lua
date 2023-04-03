local ok, indent_blankline = pcall(require, "indent_blankline")
if not ok then
	return
end

vim.opt.list = true
vim.opt.termguicolors = true

vim.cmd([[highlight IndentBlanklineIndent1 guifg=#1D2021 gui=nocombine]])

indent_blankline.setup({
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
	char_highlight_list = { "IndentBlanklineIndent1" },
})
