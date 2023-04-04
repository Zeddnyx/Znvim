local lsp_s = require("lsp_signature")

lsp_s.setup({
	floating_window = true,
	close_timeout = 1000,
	hint_prefix = "! ",
	toggle_key = "<A-d>",
})
