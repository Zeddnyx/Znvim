return {
	"lewis6991/gitsigns.nvim",
	enabled = vim.fn.executable("git") == 1,
	ft = "gitcommit",
	lazy = true,
	event = "BufRead",
	config = function()
		require("zedd.plugins.gitsigns.setup")
	end,
}
