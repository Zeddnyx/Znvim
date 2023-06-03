local options = {
	filetypes = { "*" },
	user_default_options = {
		RGB = true,
		RRGGBB = true,
		names = false,
		RRGGBBAA = true,
		AARRGGBB = true,
		rgb_fn = true,
		hsl_fn = true,
		css = true,
		mode = "background",
	},
}
require("colorizer").setup(options)