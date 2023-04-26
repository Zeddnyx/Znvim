local option = {
	ensure_installed = { "lua", "javascript", "tsx", "typescript", "html" },
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
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
		-- config = {
		-- 	-- Languages that have a single comment style
		-- 	typescript = "// %s",
		-- 	css = "/* %s */",
		-- 	scss = "/* %s */",
		-- 	html = "<!-- %s -->",
		-- 	svelte = "<!-- %s -->",
		-- 	vue = "<!-- %s -->",
		-- 	json = "",
		-- },
  },
}

require("nvim-treesitter.configs").setup(option)
