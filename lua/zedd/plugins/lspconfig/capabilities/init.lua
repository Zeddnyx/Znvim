local C = vim.lsp.protocol.make_client_capabilities()

-- Ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#completionClientCapabilities
C.textDocument.completion.completionItem.snippetSupport = true
C.textDocument.completion.completionItem.commitCharactersSupport = true
C.textDocument.completion.completionItem.deprecatedSupport = true
C.textDocument.completion.completionItem.preselectSupport = true
C.textDocument.completion.completionItem.insertReplaceSupport = true
C.textDocument.completion.completionItem.labelDetailsSupport = true
C.textDocument.completion.completionItem.resolveSupport = {
	properties = {
		"documentation",
		"detail",
		"additionalTextEdits",
	},
}

return C
