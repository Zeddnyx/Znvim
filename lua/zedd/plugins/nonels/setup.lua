local nulls = require("null-ls")
local formatting = nulls.builtins.formatting

-- npm i -g prettier @johnnymorganz/stylua-bin
nulls.setup({
	debug = true,
	sources = {
		formatting.prettier,
		formatting.stylua,
	},
})
