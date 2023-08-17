local option = {
	ensure_installed = { "markdown", "markdown_inline", "lua", "javascript", "tsx", "typescript", "html","json","http" },
	auto_install = true,
	-- autotag = { enable = true },
	autopairs = { enable = true },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	rainbow = {
		enable = true,
		extended_mode = false,
		max_file_lines = nil,
	},
	markdown = {
		enable = true,
		additional_vim_regex_highlighting = false,
		parse = {
			inline = { "markdown_inline" },
		},
	},
	markdown_inline = { enable = true },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
		config = {
			tsx = {
				jsx_element = {
					__default = "{/* %s */}",
					__parent = {
						parenthesized_expression = "// %s",
					},
				},
			},
			javascript = {
				__default = "// %s",
				jsx_element = "{/* %s */}",
				jsx_fragment = "{/* %s */}",
				jsx_attribute = "// %s",
				comment = "// %s",
				__parent = {
					-- if a node has this as the parent, use the `//` commentstring
					jsx_expression = "// %s",
				},
			},
		},
	},
	playground = {
		enable = true,
		disable = {},
		updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
		persist_queries = false, -- Whether the query persists across vim sessions
		keybindings = {
			toggle_query_editor = "o",
			toggle_hl_groups = "i",
			toggle_injected_languages = "t",
			toggle_anonymous_nodes = "a",
			toggle_language_display = "I",
			focus_language = "f",
			unfocus_language = "F",
			update = "R",
			goto_node = "<cr>",
			show_help = "?",
		},
	},
}

require("nvim-treesitter.configs").setup(option)
