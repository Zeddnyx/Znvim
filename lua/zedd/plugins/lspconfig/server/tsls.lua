local on_attach = require("zedd.plugins.lspconfig.on_attach")
local capabilities = require("zedd.plugins.lspconfig.capabilities")

local inlayHints = {
	includeInlayParameterNameHints = "all",
	includeInlayParameterNameHintsWhenArgumentMatchesName = false,
	includeInlayFunctionParameterTypeHints = true,
	includeInlayVariableTypeHints = true,
	includeInlayVariableTypeHintsWhenTypeMatchesName = false,
	includeInlayPropertyDeclarationTypeHints = true,
	includeInlayFunctionLikeReturnTypeHints = true,
	includeInlayEnumMemberValueHints = true,
}

require("lspconfig").ts_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	handlers = {
		["workspace/applyEdit"] = function()
			return { applied = false }
		end,
	},
})
