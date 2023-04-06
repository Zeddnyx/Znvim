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

-- File Manager
-- -  -- go up
-- %  -- make a new file
-- d  -- make a directory
-- D  -- delete a directory
-- R  -- rename a directory
-- gh -- hide/unhide dotfiles
-- I  -- hide/unhide banner
-- mb -- bookmark a directory
-- mB -- delete bookmark directory
-- gb -- move to bookmark directory
nmap("<leader>e", "<cmd>:Lex<cr>:vertical resize 20<cr>")

-- Buffer
nmap("<S-h>", "<cmd>BufferPrevious<cr>") -- Previuos
nmap("<S-l>", "<cmd>BufferNext<cr>") -- Next
nmap("<S-c>", "<cmd>BufferClose<cr>") -- Close
nmap("<S-m>", "<cmd>BufferPin<cr>") -- Pin

-- Split Screen
nmap("<leader>h", "<C-w>s<cr>") -- Horizontal
nmap("<leader>v", "<C-w>v<cr>") -- Vertical
nmap("<C-w>", "<C-w>w<cr>") -- Switch view
nmap("<C-h>", "<C-w>h<cr>") -- Switch right
nmap("<C-j>", "<C-w>j<cr>") -- Switch down
nmap("<C-k>", "<C-w>k<cr>") -- Switch up
nmap("<C-l>", "<C-w>l<cr>") -- Switch left

-- Select all
nmap("<S-s>", "gg<S-v>G")

-- Find and replace all matched word
nshort("<leader>s", [[:%s/]])
