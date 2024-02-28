local c = require("zedd.ui.gruvbox.lua.gruvbox.colors")
require("gruvbox").setup({
	terminal_colors = true, -- add neovim terminal colors
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = true,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	dim_inactive = false,
	transparent_mode = false,
	overrides = {
		NvimTreeIndentMarker = { fg = c.bright_aqua },
		NvimTreeImageFile = { fg = c.purple },
		NvimTreeSpecialFile = { fg = c.bright_aqua, bold = true, underline = true },
		NvimTreeExecFile = { fg = c.bright_green, bold = true },
		NvimTreeOpenedFile = { fg = c.red, bold = true },
		NvimTreeModifiedFile = { fg = c.red, bold = true },
		NvimTreeSymlinkFile = { fg = c.bright_aqua, bold = true },

		NvimTreeFileNew = { fg = c.bright_aqua, bold = true },
		NvimTreeFolderNew = { fg = c.bright_aqua, bold = true },
		NvimTreeFolderIcon = { fg = c.bright_aqua, bold = true },
		NvimTreeFolderName = { fg = c.bright_aqua, bold = true },
		NvimTreeOpenedFolderName = { fg = c.bright_aqua, bold = true },
		NvimTreeOpenedFolderIcon = { fg = c.bright_aqua, bold = true },
		NvimTreeClosedFolderIcon = { fg = c.bright_aqua, bold = true },
		NvimTreeEmptyFolderName = { fg = c.gray },

		NvimTreeGitUntracked = { fg = c.bright_aqua },
		NvimTreeGitDirty = { fg = c.bright_aqua },
		NvimTreeGitIgnored = { fg = c.gray },
		NvimTreeGitStaged = { fg = c.bright_aqua },
		NvimTreeGitMerge = { fg = c.bright_aqua },
		NvimTreeGitRenamed = { fg = c.bright_aqua },
		NvimTreeGitNew = { fg = c.bright_aqua },
	},
})
vim.cmd("colorscheme gruvbox")
