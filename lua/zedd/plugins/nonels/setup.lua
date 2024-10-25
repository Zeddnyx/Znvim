local nulls = require("null-ls")
local formatting = nulls.builtins.formatting

-- npm i -g prettier @johnnymorganz/stylua-bin
nulls.setup({
	sources = {
		formatting.prettier,
		formatting.stylua,
	},
})

