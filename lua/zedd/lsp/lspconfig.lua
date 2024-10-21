local lsp = require("lspconfig")

local on_attach = function(client, bufnr)
	vim.diagnostic.config({
		underline = true,
		virtual_text = false,
		signs = true,
		update_in_insert = true,
		severity_sort = true,
	})

	vim.o.updatetime = 500
end

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.tsserver.setup({
	on_attach = on_attach,
	handlers = {
		["workspace/applyEdit"] = function()
			return { applied = false }
		end,
	},
})
lsp.clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lsp.cssls.setup({
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
