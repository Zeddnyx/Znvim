return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
		cmd = {
			"NvimTreeFocus",
		},
	config = function()
		require("zedd.plugins.nvimtree.setup")
	end,
}
