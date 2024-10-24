return {
	"neovim/nvim-lspconfig",
	dependencies = {
		require("zedd.plugins.lspsaga.lazyspec"),
		require("zedd.plugins.nonels.lazyspec"),
	},
	event = "BufRead",
	config = function()
		vim.api.nvim_exec_autocmds("BufRead", {})

		-- require("zedd.plugins.lspconfig.server.luals")
		require("zedd.plugins.lspconfig.server.tsls")
		require("zedd.plugins.lspconfig.server.cssls")
	end,
}
