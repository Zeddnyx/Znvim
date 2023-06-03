local lsp = require("lspconfig")

local on_attach = function(client, bufnr)
	vim.diagnostic.config({
		virtual_text = false,
		signs = true,
		update_in_insert = true,
	})
	-- Show line diagnostics automatically in hover window
	vim.o.updatetime = 250
	vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

	-- show diagnostic color line number
	vim.cmd([[
	  highlight! DiagnosticLineNrError guibg=#FF0000 guifg=#FFF gui=bold
	  highlight! DiagnosticLineNrWarn guibg=#FFA500 guifg=#FFF gui=bold
	  highlight! DiagnosticLineNrInfo guibg=#00FFFF guifg=#FFF gui=bold
	  highlight! DiagnosticLineNrHint guibg=#1563FF guifg=#FFF gui=bold
	  sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
	  sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
	  sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
	  sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
	]])

  local opt = { silent = true, noremap = true }
  vim.keymap.set("n", "<S-r>", "<CMD>Lspsaga rename<CR>", opt)
  vim.keymap.set("n", "<S-k>", "<CMD>Lspsaga hover_doc<CR>", opt)
end

lsp.tsserver.setup({
  on_attach = on_attach,
})
