function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end
-- custome shortcut
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


-- buffer
-- nmap("<S-h>", "<CMD>bprevious<CR>", { desc = "Buffer: previous buffer" })
-- nmap("<S-l>", "<CMD>bnext<CR>", { desc = "Buffer: next buffer" })
-- nmap("<S-c>", "<CMD>bd<CR>", { desc = "Buffer: delete buffer" })
-- nmap("<S-q>", "<CMD>%bd|e#<CR>", { desc = "Buffer: delete all buffer except this one" })
-- nmap("<S-q>q", "<CMD>%bd<CR>", { desc = "Buffer: delete all buffer" })
-- nmap("<S-q>a", "<CMD>%bd!<CR>", { desc = "Buffer: force delete all buffer" })

--barbar 
nmap("<S-h>", "<CMD>BufferPrevious<CR>", { desc = "Buffer: previous buffer" })
nmap("<S-l>", "<CMD>BufferNext<CR>", { desc = "Buffer: next buffer" })
nmap("<S-c>", "<CMD>BufferClose<CR>", { desc = "Buffer: close buffer" })

-- lsp saga
nmap("<S-k>", "<CMD>Lspsaga hover_doc<CR>")
nmap("<S-j>", "<CMD>Lspsaga preview-definition<CR>")
nmap("<S-r>", "<CMD>Lspsaga rename<CR>")

-- switch screen
nmap("<leader>h", "<C-w>h<CR>") -- Switch right
nmap("<leader>j", "<C-w>j<CR>") -- Switch down
nmap("<leader>k", "<C-w>k<CR>") -- Switch up
nmap("<leader>l", "<C-w>l<CR>") -- Switch left

nmap("<S-j>", "") -- disable default keybind
nmap("<S-k>", "") -- disable default keybind
imap("kk", "<Esc>") 
imap("jj", "<Esc>") 
-- vim.g.netrw_banner = 0 -- custome file exporer (builtin)
-- vim.g.netrw_liststyle = 3 -- custome file exporer (builtin)
-- nmap("<leader>e", "<CMD>Lex<CR>:vertical resize 25<CR>") -- file exporer (builtin)
nmap("<leader>e", "<CMD>NvimTreeOpen<CR>") -- file manager
nmap("<leader>a", "gg<S-v>G") -- select all
nmap("<leader>y", "yiw") -- copy forward word
nshort("<leader>s", [[:%s/]]) -- find and replace all matched word
nshort("<leader>d", [[/\<\\><Left><Left>]]) -- find 'vim', match if 'vim' but not if 'nvim'