local lsp = require("lspconfig")

local on_attach = function(client, bufnr)
	vim.diagnostic.config({
		virtual_text = false,
		signs = true,
		update_in_insert = true,
	})

	-- Show line diagnostics automatically in hover window
	vim.o.updatetime = 1000
	vim.cmd([[lua vim.diagnostic.open_float(nil, {focus=false})]])

	-- show diagnostic color line number
	vim.cmd([[
	  sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
	  sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
	  sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
	  sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNjrHint
	]])
end

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- tsserver is deprecated so we use ts_ls
lsp.ts_ls.setup({
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
