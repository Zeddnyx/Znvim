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
    float = {
      enable = true,
      open_win_config = function()
        local screen_w = vim.opt.columns:get()
        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
        local window_w = screen_w * 100
        local window_h = screen_h * 100
        local window_w_int = math.floor(window_w)
        local window_h_int = math.floor(window_h)
        local center_x = (screen_w - window_w) / 2
        local center_y = ((vim.opt.lines:get() - window_h) / 2)
                         - vim.opt.cmdheight:get()
        return {
          border = 'rounded',
          relative = 'editor',
          row = center_y,
          col = center_x,
          width = window_w_int,
          height = window_h_int,
        }
        end,
    },
    width = function()
      return math.floor(vim.opt.columns:get() * 5)
    end,
	},
	git = {
		enable = true,
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
				git = true,
			},

			glyphs = {
				default = "",
				symlink = "",
				folder = {
					default = "",
					empty = "",
					empty_open = "",
					open = "",
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
