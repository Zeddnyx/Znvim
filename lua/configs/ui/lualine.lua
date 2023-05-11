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
		a = { fg = colors.black, bg = colors.white, gui = "bold" },
		b = { fg = colors.white, bg = colors.transparent },
	},
	insert = {
		a = { fg = colors.black, bg = colors.white, gui = "bold" },
		b = { fg = colors.white, bg = colors.transparent },
	},
	visual = { a = { fg = colors.black, bg = colors.white, gui = "bold" } },
	replace = { a = { fg = colors.red, bg = colors.transparent, gui = "bold" } },
}
local mode_map = {
	["n"] = "N",
	["no"] = "O-P",
	["nov"] = "O-P",
	["noV"] = "O-P",
	["no�"] = "O-P",
	["niI"] = "N",
	["niR"] = "N",
	["niV"] = "N",
	["nt"] = "N",
	["v"] = "V",
	["vs"] = "V",
	["V"] = "V-L",
	["Vs"] = "V-L",
	["�"] = "V-B",
	["�s"] = "V-B",
	["s"] = "S",
	["S"] = "S-L",
	["�"] = "S-B",
	["i"] = "I",
	["ic"] = "I",
	["ix"] = "I",
	["R"] = "R",
	["Rc"] = "R",
	["Rx"] = "R",
	["Rv"] = "V-R",
	["Rvc"] = "V-R",
	["Rvx"] = "V-R",
	["c"] = "C",
	["cv"] = "EX",
	["ce"] = "EX",
	["r"] = "R",
	["rm"] = "M",
	["r?"] = "C",
	["!"] = "SHELL",
	["t"] = "T",
}

local opts = {
	options = {
		icons_enabled = true,
		theme = custome_theme,
		component_separators = "|",
		section_separators = "",
		disabled_filetypes = {
			statusline = { "NvimTree" },
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
	sections = {},
	active_sections = {},
	tabline = {},
	winbar = {
		lualine_a = { {
			function()
				return mode_map[vim.api.nvim_get_mode().mode] or "__"
			end,
		} },
		lualine_b = {
			{ "windows", filetype_names = { TelescopePrompt = "Telescope" }, show_modified_status = true },
			"filetype",
		},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	inactive_winbar = {
    lualine_a = {},
		lualine_b = {
			{ "windows", filetype_names = { TelescopePrompt = "Telescope" }, show_modified_status = true },
			"filetype",
		},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	extensions = {},
}

require("lualine").setup(opts)
