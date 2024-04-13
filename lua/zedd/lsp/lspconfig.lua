local lsp = require("lspconfig")

local on_attach = function(client, bufnr)
	vim.diagnostic.config({
		virtual_text = false,
		signs = true,
		update_in_insert = true,
	})
	-- Show line diagnostics automatically in hover window
	vim.o.updatetime = 999999 -- change to 500 if u want to see msg on hover
	vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

	-- show diagnostic color line number
	vim.cmd([[
	  sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
	  sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
	  sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
	  sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
	]])
end

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- comment this tsserver below if using tsc from nulls
lsp.tsserver.setup({
	on_attach = on_attach,
})
lsp.clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lsp.cssls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		css = { validate = true, lint = {
			unknownAtRules = "ignore", -- hide unknownAtRules warning in tailwind css
		} },
		scss = { validate = true, lint = {
			unknownAtRules = "ignore",
		} },
		less = { validate = true, lint = {
			unknownAtRules = "ignore",
		} },
	},
})
