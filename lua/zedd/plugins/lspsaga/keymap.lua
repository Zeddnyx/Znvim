local keymap = vim.keymap

local goto_definition = function()
	vim.lspsaga.goto_definition()
end

keymap.set("n", "<leader>ld", goto_definition, { desc = "LSP: Formats the current buffer" })
