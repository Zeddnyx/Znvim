local colors = {
	blue = "#7D9D91",
	cyan = "#79dac8",
	green = "#8F9225",
	black = "#080808",
	white = "#c6c6c6",
	red = "#BC3D2F",
	orange = "#BB631B",
	violet = "#8E526E",
	grey = "#303030",
	transparent = "#fafafa0",
}

local custome_theme = {
	normal = {
		a = { fg = colors.green, bg = colors.transparent, gui = "bold" },
		b = { fg = colors.white, bg = colors.transparent, gui = "bold" },
	},
	insert = {
		a = { fg = colors.blue, bg = colors.transparent, gui = "bold" },
		b = { fg = colors.red, bg = colors.transparent, gui = "bold" },
	},
	visual = { a = { fg = colors.violet, bg = colors.transparent, gui = "bold" } },
	replace = { a = { fg = colors.red, bg = colors.transparent, gui = "bold" } },
	inactive = {
		a = { fg = colors.white, bg = colors.grey },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = colors.black, bg = colors.grey },
	},
}

local opts = {
	options = {
		icons_enabled = true,
		theme = custome_theme,
		component_separators = "|",
		section_separators = "",
		disabled_filetypes = {
			statusline = { "NvimTree" },
			winbar = { "NvimTree" },
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {},
	inactive_sections = {},
	tabline = {},
	winbar = {
		lualine_a = { "mode" },
		lualine_b = { { "windows", use_mode_colors = true } },
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	inactive_winbar = {},
	extensions = {},
}

require("lualine").setup(opts)
