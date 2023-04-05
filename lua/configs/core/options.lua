vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.wrap = false -- wrap line code
vim.opt.number = true -- show a list number
vim.opt.showmode = false -- show insert, visual or normal mode
vim.opt.hlsearch = true -- highlight when match search words
vim.opt.showcmd = true
vim.opt.cmdheight = 0 -- height of statusline at the bottom
vim.opt.laststatus = 2 -- show where are you in file what
vim.opt.scrolloff = 1
vim.opt.shell = "fish"
vim.opt.swapfile = false
vim.opt.list = false
vim.opt.fillchars:append({ eob = " " }) -- hide ~ character

vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.backspace = "start,eol,indent"

-- highlight cursorline
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 5
vim.opt.background = "dark"
