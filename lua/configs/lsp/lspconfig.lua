local lspconfig = require("lspconfig")

local cmp_nvim_lsp = require("cmp_nvim_lsp")

local on_attach = function(client, bufnr)
	vim.diagnostic.config({
		virtual_text = false,
		signs = false,
		update_in_insert = true,
	})
	-- Show line diagnostics automatically in hover window
	vim.o.updatetime = 250
	vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

	-- show diagnostic color line number
	-- vim.cmd [[
	--   highlight! DiagnosticLineNrError guibg=#51202A guifg=#FF0000 gui=bold
	--   highlight! DiagnosticLineNrWarn guibg=#51412A guifg=#FFA500 gui=bold
	--   highlight! DiagnosticLineNrInfo guibg=#1E535D guifg=#00FFFF gui=bold
	--   highlight! DiagnosticLineNrHint guibg=#1E205D guifg=#0000FF gui=bold
	--
	--   sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
	--   sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
	--   sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
	--   sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
	-- ]]

	-- block tsserver formatting
	if client.name == "tsserver" then
		client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
	end
end

-- used to enable autocompletion
local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig.tsserver.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	globals = { "vim" },
	root_dir = vim.loop.cwd,
	javascript = {
		autoClosingTags = true,
		suggest = {
			autoImports = true,
		},
		autoImportsOnFileMove = {
			enable = true,
		},
		suggestionActions = {
			enabled = true,
		},
	},
})
