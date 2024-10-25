return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
  cmd = { "Telescope" },
	config = function()
		require("zedd.plugins.telescope.setup")
	end,
}
