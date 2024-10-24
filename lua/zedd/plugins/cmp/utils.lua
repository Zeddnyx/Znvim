local M = {}

vim.api.nvim_set_hl(0, "MENU", { bg = "#1D2021", fg = "#DBCCA7" })
vim.api.nvim_set_hl(0, "SELECT", { bg = "#8ec07c", fg = "#1D2021" })
vim.api.nvim_set_hl(0, "BORDER", { fg = "#8ec07c" })

M.has_words_before = function()
	unpack = unpack or table.unpack
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

M.feedkeys = function(key, mode)
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

M.window = function()
	return {
		border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		winhighlight = "Normal:MENU,FloatBorder:BORDER,CursorLine:SELECT,Search:MENU",
	}
end

return M
