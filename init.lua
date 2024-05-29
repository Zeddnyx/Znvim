vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.netrw_banner = 0 -- hide banner :Ex
vim.cmd.highlight('IndentLine guifg=#282828')
vim.cmd.highlight('IndentLineCurrent guifg=#3AAAB6')

require("zedd.core.options")
require("zedd.core.keybinds")
require("zedd.plugins")
