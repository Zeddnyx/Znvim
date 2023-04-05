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

-- Nvim Tree File
nmap("<leader>e", "<cmd>:Lex<cr>:vertical resize 30<cr>")

-- Multi file
nmap("<S-h>", "<cmd>BufferPrevious<cr>") -- Previuos
nmap("<S-l>", "<cmd>BufferNext<cr>") -- Next
nmap("<S-c>", "<cmd>BufferClose<cr>") -- Close
nmap("<S-m>", "<cmd>BufferPin<cr>") -- Pin

-- Split Screen
nmap("<leader>h", "<C-w>s<cr>") -- Horizontal
nmap("<leader>v", "<C-w>v<cr>") -- Vertical
nmap("<S-w>", "<C-w>w<cr>") -- Switch view

-- Select all
nmap("<S-s>", "gg<S-v>G")

-- Go to diagnostic line
nmap("<S-f>", "<cmd>lua vim.diagnostic.goto_next()<cr>")

-- Find and replace all matched word
nshort("<leader>s", [[:%s/]])
