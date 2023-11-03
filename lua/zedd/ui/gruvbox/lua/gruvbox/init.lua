local M = {}

M.load = function()
	if vim.version().minor < 8 then
		vim.notify_once("gruvbox.nvim: you must use neovim 0.8 or higher")
		return
	end

	local groups = require("gruvbox.groups")
	for group, opts in pairs(groups) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
