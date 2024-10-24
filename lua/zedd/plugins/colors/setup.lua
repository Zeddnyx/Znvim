require("nvim-highlight-colors").setup({
	---@usage 'background'|'foreground'|'virtual'
	render = "background",
	virtual_symbol = "■",

	---Highlight named colors, e.g. 'green'
	enable_named_colors = true,

	---Highlight tailwind colors, e.g. 'bg-blue-500'
	enable_tailwind = false,

	---Set custom colors
	---Label must be properly escaped with '%' to adhere to `string.gmatch`
	--- :help string.gmatch
	custom_colors = {
		{ label = "%-%-theme%-primary%-color", color = "#0f1219" },
		{ label = "%-%-theme%-secondary%-color", color = "#5a5d64" },
	},
})
