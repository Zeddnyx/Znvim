vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.netrw_banner = 0 -- hide banner :Ex
vim.o.background = "dark" -- or "light" for light mode

require("zedd.core.options")
require("zedd.core.keybinds")
require("zedd.plugins")
