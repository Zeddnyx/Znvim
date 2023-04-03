local nullls_status, nulls = pcall(require, "null-ls")
if not nullls_status then
	return
end

local formatting = nulls.builtins.formatting
nulls.setup({
	debug = true,
	sources = {
		formatting.prettier,
		formatting.stylua,
	},
})
