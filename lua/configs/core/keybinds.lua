function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end
-- Functional Shortcut
function short(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = false })
end

-- normal
function nmap(shortcut, command)
	map("n", shortcut, command)
end
-- insert
function imap(shortcut, command)
	map("i", shortcut, command)
end
-- virtual
function vmap(shortcut, command)
	map("v", shortcut, command)
end
-- normal ( shortkey )
function nshort(shortcut, command)
	short("n", shortcut, command)
end


-- telescope
nmap("<leader>fb", "<CMD>Telescope buffers<CR>")
nmap("<leader>ff", "<CMD>Telescope find_files<CR>")
nmap("<leader>fg", "<CMD>Telescope live_grep<CR>")

-- buffer
nmap("<S-h>", "<CMD>bprevious<CR>", { desc = "Buffer: previous buffer" })
nmap("<S-l>", "<CMD>bnext<CR>", { desc = "Buffer: next buffer" })
nmap("<S-c>", "<CMD>bd<CR>", { desc = "Buffer: delete buffer" })
nmap("<S-q>q", "<CMD>%bd<CR>", { silent = true, desc = "Buffer: delete all buffer" })
nmap("<S-q>a", "<CMD>%bd!<CR>", { silent = true, desc = "Buffer: force delete all buffer" })
nmap("<S-q>o", "<CMD>%bd|e#<CR>", { silent = true, desc = "Buffer: deletDTreeToggler except this one" })

-- switch screen
nmap("<leader>h", "<C-w>h<CR>") -- Switch right
nmap("<leader>j", "<C-w>j<CR>") -- Switch down
nmap("<leader>k", "<C-w>k<CR>") -- Switch up
nmap("<leader>l", "<C-w>l<CR>") -- Switch left

-- costume file manager builtin
-- vim.g.netrw_banner = 0
-- vim.g.netrw_liststyle = 3
-- nmap("<leader>e", "<CMD>Lex<CR>:vertical resize 25<CR>") -- file manager (builtin)
nmap("<leader>e", "<CMD>NvimTreeOpen<CR>") -- file manager
nmap("<leader>a", "gg<S-v>G") -- select all
nshort("<leader>s", [[:%s/]]) -- find and replace all matched word
nmap("<S-j>", "") -- disable default keybind
nmap("<S-k>", "") -- disable default keybind
