local on_attach = require("zedd.plugins.lspconfig.on_attach")
local capabilities = require("zedd.plugins.lspconfig.capabilities")

require("lspconfig").cssls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		css = {
			validate = true,
			lint = {
				unknownAtRules = "ignore", -- hide unknownAtRules warning in tailwind css
			},
		},
		scss = { validate = true, lint = {
			unknownAtRules = "ignore",
		} },
		less = { validate = true, lint = {
			unknownAtRules = "ignore",
		} },
	},
})
