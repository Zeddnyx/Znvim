local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	require("zedd.plugins.cmp.lazyspec"),
	require("zedd.plugins.codeium.lazyspec"),
	require("zedd.plugins.colors.lazyspec"),
	require("zedd.plugins.comments.lazyspec"),
	require("zedd.plugins.gruvbox.lazyspec"),
	require("zedd.plugins.indentmini.lazyspec"),
	require("zedd.plugins.lspconfig.lazyspec"),
	require("zedd.plugins.lspkind.lazyspec"),
	require("zedd.plugins.lspsaga.lazyspec"),
	require("zedd.plugins.nonels.lazyspec"),
	require("zedd.plugins.nvimtree.lazyspec"),
	require("zedd.plugins.telescope.lazyspec"),
	require("zedd.plugins.treesitter.lazyspec"),
}

require("lazy").setup(plugins, {
	ui = {
		border = "none",
	},
})
