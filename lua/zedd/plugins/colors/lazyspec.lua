return {
	"brenoprata10/nvim-highlight-colors",
	lazy = true,
	event = "BufRead",
	config = function()
		require("zedd.plugins.colors.setup")
	end,
}
