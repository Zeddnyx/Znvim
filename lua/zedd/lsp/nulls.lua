local nulls = require("null-ls")
local formatting = nulls.builtins.formatting

-- npm i -g prettier @johnnymorganz/stylua-bin
nulls.setup({
	debug = true,
	sources = {
		formatting.prettier,
		formatting.stylua,
	},
})

local function format()
	vim.lsp.buf.format({ bufnr = bufnr })
end

vim.keymap.set("n", "<S-f>", format, { desc = "LSP: Format the current buffer" })
