local gruvbox = require("gruvbox")

gruvbox.setup({
	contrast = "hard", -- hard, soft
	italic = {
		strings = false,
		comments = false,
	},
	palette_overrides = {
		yellow = "#D69820",
	},
	overrides = {
		NvimTreeFolderIcon = { fg = "#D69820" },
		SignColumn = { bg = "#1D2021" },
	},
})
gruvbox.load()
