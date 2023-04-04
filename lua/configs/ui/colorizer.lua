local options = {
	filetypes = { "*" },
	user_default_options = {
		RGB = true,
		RRGGBB = true,
		names = true,
		RRGGBBAA = true,
		AARRGGBB = true,
		rgb_fn = true,
		hsl_fn = true,
		css = true,
		mode = "background",
		sass = { enable = false, parsers = { css } },
	},
}
require("colorizer").setup(options)
