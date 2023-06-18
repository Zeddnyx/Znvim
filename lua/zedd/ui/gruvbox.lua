local gruvbox = require("gruvbox")

gruvbox.setup({
	contrast = "hard", -- hard, soft
	italic = {
		strings = false,
		comments = false,
	},
	palette_overrides = {
    dark0_hard = "#1D2021",
		yellow = "#D69820",
		cyan =   "#3AAAB6",
		blue =   "#458588",
		red =    "#E74633",
		pink =   "#d4879c",
		green =  "#679C69",
		bright_aqua =   "#427b58",
		gray =   "#928374",
		purple = "#b16286",
		orange = "#fe8019",
	},
	overrides = {
		NvimTreeFolderIcon = { fg = "#D69820" },
		SignColumn = { bg = "#1D2021" },
	},
})
gruvbox.load()
