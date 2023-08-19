local nulls = require("null-ls")
local formatting = nulls.builtins.formatting
local diagnostic = nulls.builtins.diagnostics

-- npm i -g prettier @johnnymorganz/stylua-bin tsc-node
nulls.setup({
	debug = true,
	sources = {
		formatting.prettier,
		formatting.stylua,
		-- diagnostic.tsc, -- comment this if using tsserver
	},
})

local function format()
	vim.lsp.buf.format({ bufnr = bufnr })
end

vim.keymap.set("n", "<S-f>", format, { desc = "LSP: Format the current buffer" })
