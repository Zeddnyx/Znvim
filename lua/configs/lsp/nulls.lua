local nulls = require("null-ls")

local on_attach = function(client, bufnr)
	vim.diagnostic.config({
		virtual_text = false,
		signs = true,
		update_in_insert = true,
	})
	-- Show line diagnostics automatically in hover window
	vim.o.updatetime = 150
	vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

	-- show diagnostic color line number
	vim.cmd([[
	  highlight! DiagnosticLineNrError guibg=#51202A guifg=#FF0000 gui=bold
	  highlight! DiagnosticLineNrWarn guibg=#51412A guifg=#FFA500 gui=bold
	  highlight! DiagnosticLineNrInfo guibg=#1E535D guifg=#00FFFF gui=bold
	  highlight! DiagnosticLineNrHint guibg=#1E205D guifg=#0000FF gui=bold
	  sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
	  sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
	  sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
	  sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
	]])
end

local formatting = nulls.builtins.formatting
local diagnostic = nulls.builtins.diagnostics

-- npm i -g prettier @johnnymorganz/stylua-bin tsc-node
nulls.setup({
	on_attach = on_attach,
	debug = true,
	sources = {
		formatting.prettier,
		formatting.stylua,
		diagnostic.tsc
	},
})

local function format()
	vim.lsp.buf.format({ bufnr = bufnr })
end

vim.keymap.set("n", "<S-f>", format, { desc = "LSP: Format the current buffer" })
