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

-- file manager
-- -   -- back to up directory
-- %   -- create a file
-- d   -- create a directory
-- D   -- remove a directory or file
-- R   -- rename/move a directory or file
-- I   -- hide/unhide banner
-- gh  -- hide/unhide dotfile
-- iii -- list tree file
-- u   -- back to recently visited directory
nmap("<leader>e", "<cmd>:Lex<cr>:vertical resize 24<cr>")

-- buffer
nmap("<S-h>", "<CMD>bprevious<CR>", { desc = "Buffer: focus to previous buffer" })
nmap("<S-l>", "<CMD>bnext<CR>", { desc = "Buffer: focus to next buffer" })
nmap("<S-c>", "<CMD>bd<CR>", { desc = "Buffer: delete buffer" })
nmap("<S-q>q", "<CMD>%bd<CR>", { silent = true, desc = "Buffer: delete all buffer" })
nmap("<S-q>a", "<CMD>%bd!<CR>", { silent = true, desc = "Buffer: force delete all buffer" })
nmap("<S-q>o", "<CMD>%bd|e#<CR>", { silent = true, desc = "Buffer: delete all buffer except this one" })


-- split screen
nmap("<C-s>", "<C-w>s<cr>") -- Horizontal
nmap("<C-v>", "<C-w>v<cr>") -- Vertical
nmap("<C-w>", "<C-w>w<cr>") -- Switch view
nmap("<C-h>", "<C-w>h<cr>") -- Switch right
nmap("<C-j>", "<C-w>j<cr>") -- Switch down
nmap("<C-k>", "<C-w>k<cr>") -- Switch up
nmap("<C-l>", "<C-w>l<cr>") -- Switch left

-- select all
nmap("<S-s>", "gg<S-v>G")

-- find and replace all matched word
nshort("<leader>s", [[:%s/]])
