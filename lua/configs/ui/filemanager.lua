local tree = require("nvim-tree")

tree.setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	filters = {
		dotfiles = true,
		custom = { "^.git$", "^node_modules$" },
	},
	renderer = {
		add_trailing = false,
		group_empty = true,
		highlight_git = true,
		full_name = false,
		highlight_opened_files = "none",
		root_folder_modifier = ":~",
		indent_width = 2,

		icons = {
			webdev_colors = true,
			git_placement = "after",
			padding = " ",
			symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = false,
				git = true,
			},
			glyphs = {
				git = {
					unstaged = "U",
					untracked = "",
					staged = " ",
					unmerged = "",
					renamed = "",
					deleted = "﫧",
					ignored = "",
				},
			},
		},
		special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
		symlink_destination = true,
	},
	hijack_directories = {
		enable = true,
		auto_open = true,
	},
	update_focused_file = {
		enable = true,
		update_root = true,
		ignore_list = {},
	},
	ignore_ft_on_setup = {},
	system_open = {
		cmd = "",
		args = {},
	},
	diagnostics = {
		enable = false,
		show_on_dirs = false,
		debounce_delay = 50,
		icons = {
			hint = " ",
			info = "",
			warning = "",
			error = " ",
		},
	},
})
