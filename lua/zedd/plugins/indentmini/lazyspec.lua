return {
	"nvimdev/indentmini.nvim",
	lazy = true,
	event = "BufRead",
	config = function()
		require("indentmini").setup()
	end,
}
