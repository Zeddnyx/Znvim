local highlight = {
	"Red",
}
local hooks = require("ibl.hooks")

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
	vim.api.nvim_set_hl(0, "Red", { fg = "#C13B2D" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup({ scope = { highlight = highlight } })

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
