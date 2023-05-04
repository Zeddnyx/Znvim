local options = {
	filters = {
		dotfiles = false,
		custom = { "node_modules", "\\.cache", ".git", ".next" },
	},
	disable_netrw = true,
	hijack_netrw = true,
	hijack_cursor = true,
	hijack_unnamed_buffer_when_opening = false,
	sync_root_with_cwd = true,
	view = {
		adaptive_size = false,
		side = "left",
		width = 30,
		preserve_window_proportions = true,
	},
	git = {
		enable = false,
		ignore = true,
	},
	filesystem_watchers = {
		enable = true,
	},
	actions = {
		open_file = {
			resize_window = true,
		},
		remove_file = {
			close_window = true,
		},
		change_dir = {
			enable = true,
			global = false,
			restrict_above_cwd = false,
		},
	},
	renderer = {
		root_folder_label = true,
		highlight_git = false,
		highlight_opened_files = "none",
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", "LICENSE" },

		indent_markers = {
			enable = false,
		},

		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = false,
				git = false,
			},

			glyphs = {
				default = "",
				symlink = "",
				folder = {
					default = "",
					empty = "",
					empty_open = "",
					open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "[U]",
					staged = "[✓]",
					unmerged = "",
					renamed = "[R]",
					untracked = "[?]",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
}

require("nvim-tree").setup(options)
