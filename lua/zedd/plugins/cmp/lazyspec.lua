return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		{
			"hrsh7th/cmp-vsnip",
			dependencies = "hrsh7th/vim-vsnip",
			config = function()
				require("zedd.plugins.cmp.snippet")
			end,
		},
	},
	config = function()
		require("zedd.plugins.cmp.setup")
	end,
}
