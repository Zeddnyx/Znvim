-- Functional
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

nmap("<S-j>", "")
nmap("<S-k>", "")

-- buffer
nmap("<S-h>", "<CMD>bprevious<CR>", { desc = "Buffer: previous buffer" })
nmap("<S-l>", "<CMD>bnext<CR>", { desc = "Buffer: next buffer" })
nmap("<S-c>", "<CMD>bd<CR>", { desc = "Buffer: delete buffer" })
nmap("<S-q>q", "<CMD>%bd<CR>", { silent = true, desc = "Buffer: delete all buffer" })
nmap("<S-q>a", "<CMD>%bd!<CR>", { silent = true, desc = "Buffer: force delete all buffer" })
nmap("<S-q>o", "<CMD>%bd|e#<CR>", { silent = true, desc = "Buffer: delete all buffer except this one" })

-- switch screen
nmap("<C-h>", "<C-w>h<cr>") -- Switch right
nmap("<C-j>", "<C-w>j<cr>") -- Switch down
nmap("<C-k>", "<C-w>k<cr>") -- Switch up
nmap("<C-l>", "<C-w>l<cr>") -- Switch left

-- costume shortcut
nmap("<leader>a", "gg<S-v>G") -- select all
nshort("<leader>s", [[:%s/]]) -- find and replace all matched word
