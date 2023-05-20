local colors = {
	cyan = "#79dac8",
	green = "#B6B926",
	black = "#080808",
	white = "#c6c6c6",
	red = "#BC3D2F",
	transparent = "#fafafa0",
}

local custome_theme = {
	normal = {
		a = { fg = colors.green, bg = colors.transparent, gui = "bold" },
		b = { fg = colors.white, bg = colors.transparent },
	},
	insert = {
		a = { fg = colors.white, bg = colors.transparent, gui = "bold" },
	},
	visual = {
		a = { fg = colors.cyan, bg = colors.transparent, gui = "bold" },
	},
	replace = {
		a = { fg = colors.red, bg = colors.transparent, gui = "bold" },
	},
}

local opts = {
	options = {
		icons_enabled = true,
		theme = custome_theme,
		component_separators = "",
		section_separators = "",
		disabled_filetypes = {
			statusline = { "NvimTree_1", "NvimTree" },
			winbar = { "NvimTree_1", "NvimTree" },
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
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "filename" },
		lualine_c = { "filetype" },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
	active_sections = {},
	tabline = {},
	winbar = {
	},
	inactive_winbar = {},
	extensions = {},
}

require("lualine").setup(opts)
