function map(mode, shortcut, command)
	if type(command) == "string" then
		vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
	else
		print("Error: Command must be a string")
	end
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

-- BUFFER
nmap("<S-h>", "<CMD>bprevious<CR>", { desc = "Buffer: focus to previous buffer" })
nmap("<S-l>", "<CMD>bnext<CR>", { desc = "Buffer: focus to next buffer" })
nmap("<S-c>", "<CMD>bd<CR>", { desc = "Buffer: delete buffer" })
nmap("<S-q>", "<CMD>%bd|e#<CR>", { desc = "Buffer: delete all buffer except current buffer" })
nmap("<A-Tab>", "<C-6>", { desc = "Buffer: jump to next/prev buffer" })
--nmap("<S-l>", "<CMD>BufferNext<CR>")
--nmap("<S-h>", "<CMD>BufferPrevious<CR>")

-- LSP
nmap("<S-s>r", "<CMD>Lspsaga rename<CR>", { desc = "Rename globaly" })
nmap("<S-s>h", "<CMD>Lspsaga hover_doc<CR>", { desc = "Hover type" })
nmap("<S-s>d", "<CMD>Lspsaga diagnostic_jump_next<CR>", { desc = "Next diagnostic" })

-- FOLDING LINE
nmap("ft", "vatzf<CR>", { desc = "Tag html" })
nmap("ff", "vaBzf", { desc = "func" })
nmap("fo", "zo", { desc = "Unfold" })

-- file manager built in
-- nmap("<leader>e", "<CMD>Lex<CR><CR><CMD>vertical resize 30<CR>")

-- CUSTOME
vmap("<S-j>", ":m '>+1<CR>gv=gv", { desc = "Move down line" })
vmap("<S-k>", ":m '<-2<CR>gv=gv", { desc = "Move up line" })
imap("<C-f>", "${}<left>", { desc = "Insert ${}" })
nmap("<leader>ww", "<CMD>w<CR>", { desc = "Save" })
nmap("<leader>wa", "<CMD>wa<CR>", { desc = "Save all" })
nmap("r", "<C-r>", { desc = "Redo" })
nmap("<leader>a", "gg<S-v>G", { desc = "Select all" })
nmap("<leader>c", ":noh<CR>", { desc = "Clear higlight" })
nmap("<leader>y", "yiw", { desc = "Yank/Copy forward" })
nmap("<leader>v", "viw", { desc = "Yank/Copy backward" })

-- JUMP LINE
nmap("m", "]m", { desc = "Next func" })
nmap("<S-m>", "[m", { desc = "Prev func" })
nmap("<S-t>", "vat<Esc>j", { desc = "Between tag html" })

-- SEARCH AND REPLACE
nmap("<leader>n", [[:%s/\d\+/number/g]], { desc = "All number to type number" })
nmap("<leader>s", [[:%s/"[^"]*"/string/g]], { desc = "All string to type string" })
nmap("<C-e>", [[:s/\([a-zA-Z]\)\(-\)\([a-zA-Z]\)/\1\u\3/g<CR>]], { desc = "Rmv - and change to capitalize" })
nmap("<S-s>s", [[:%s/\<\\>/<Left><Left><Left>]], { desc = "Search specific word and replace" })
nmap("<S-s>/", [[:%s/]], { desc = "Search and replace" })

-- GIT
nmap("<leader>gd", "<CMD>Gitsign toggle_deleted<CR>", { desc = "Show deleted lines" })
nmap("<leader>gcl", "<CMD>Gitsign toggle_current_line_blame<CR>", { desc = "Show who made changes" })
nmap("<leader>gbl", "<CMD>Gitsign blame_line<CR>", { desc = "Blame line" })
nmap("<leader>c0", "<CMD>GitConflictChooseNone<CR>", { desc = "Choose None" })
nmap("<leader>cb", "<CMD>GitConflictChooseBoth<CR>", { desc = "Choose Both" })
nmap("<leader>co", "<CMD>GitConflictChooseOurs<CR>", { desc = "Choose Ours" })
nmap("<leader>ct", "<CMD>GitConflictChooseTheirs<CR>", { desc = "Choose Theirs" })
nmap("<leader>cn", "<CMD>GitConflictNextConflict<CR>", { desc = "Next conflict" })
nmap("<leader>cp", "<CMD>GitConflictPrevConflict<CR>", { desc = "Prev conflict" })

-- AUTP PAIR
imap("(", "()<left>")
imap("[", "[]<left>")
imap("{", "{}<left>")
imap("<", "<><left>")
imap("'", "''<left>")
imap('"', '""<left>')
imap("`", "``<left>")

-- DISABLE KEY
nmap("<up>", "<Nop>")
nmap("<left>", "<Nop>")
nmap("<right>", "<Nop>")
nmap("<down>", "<Nop>")
nmap("<C-z>", "<Nop>")
