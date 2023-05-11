local M = {}

function M.config()
	local telescope = require("telescope")
	local previewers = require("telescope.previewers")
	local sorters = require("telescope.sorters")

	local options = {
		defaults = {
			vimgrep_arguments = {
				"rg",
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--smart-case",
			},
			results_title = "",
			entry_prefix = "   ",
			initial_mode = "insert",
			selection_strategy = "reset",
			file_ignore_patterns = { "^node_modules/", ".git", "%.svg", ".svg", ".png", ".jpeg", ".jpg", "assets/**", "*/assets", "assets", ".mp3", ".mp4", "public/" },
			file_sorter = sorters.get_fzy_sorter,
			generic_sorter = sorters.get_generic_fzy_sorter,
			path_display = { "absolute" },
			winblend = 5,
			color_devicons = true,
			use_less = false,
			file_previewer = previewers.vim_buffer_cat.new,
			grep_previewer = previewers.vim_buffer_vimgrep.new,
			qflist_previewer = previewers.vim_buffer_qflist.new,
			-- custom theme
			sorting_strategy = "descending",
		},
		pickers = {
			diagnostics = {
				previewer = false,
				line_width = 0.7,
				no_unlisted = true,
				path_display = {
					"hidden",
				},
			},
			find_files = {
				previewer = true,
			},
			oldfiles = {
				previewer = false,
				file_ignore_patterns = {
					"/usr/share/nvim/runtime/*",
					vim.fn.stdpath("data"),
					vim.fn.stdpath("cache"),
					vim.fn.stdpath("log"),
				},
			},
			git_files = {
				hidden = true,
				show_untracked = true,
			},
			live_grep = {
				--@usage don't include the filename in the search results
				only_sort_text = true,
			},
			grep_string = {
				only_sort_text = true,
			},
		},
	}
end
return M.config()
