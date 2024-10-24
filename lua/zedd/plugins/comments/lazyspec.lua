return {
	"folke/ts-comments.nvim",
	opts = {},
	lazy = true,
	event = "BufReadPost",
	enabled = vim.fn.has("nvim-0.10.0") == 1,
}
