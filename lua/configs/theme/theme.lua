local  gruvbox = require("gruvbox")

gruvbox.setup({
	contrast = "hard", -- hard, soft
	italic = {
		strings = false,
		comments = false,
	},
	palette_overrides = {
		yellow = "#D69820",
	},
})
gruvbox.load()
