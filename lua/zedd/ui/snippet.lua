vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"
vim.g.vsnip_filetypes = {
	javascriptreact = {
		"javascript/react",
		"javascript/javascript",
		"html",
	},
	typescriptreact = {
		"javascript/react",
		"javascript/typescript",
		"javascript/javascript",
		"html",
	},
	javascript = { "javascript/javascript" },
	typescript = { "javascript/typescript", "javascript/javascript" },
	css = { "tailwindcss" },
	html = { "angular/html" },
	http = { "http" },
}
