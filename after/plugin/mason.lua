local ok, mason = pcall(require, "mason")
if not ok then return end

mason.setup {}
require("mason-lspconfig").setup {
	ensured_installed = { "tsserver", "eslint" },
	automatic_installation = true
}
