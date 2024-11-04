function map(mode, shortcut, command)
	if type(command) == "string" then
		vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true,desc = "jasj"})
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
nmap("<S-h>", "<CMD>bprevious<CR>")
nmap("<S-l>", "<CMD>bnext<CR>")
nmap("<S-c>", "<CMD>bd<CR>")
nmap("<S-q>", "<CMD>%bd|e#<CR>")
nmap("<A-Tab>", "<C-6>")
--nmap("<S-l>", "<CMD>BufferNext<CR>")
--nmap("<S-h>", "<CMD>BufferPrevious<CR>")

-- LSP
nmap("<A-r>", "<CMD>Lspsaga rename<CR>")
nmap("<A-h>", "<CMD>Lspsaga hover_doc<CR>")
nmap("<A-d>", "<CMD>Lspsaga goto_definition<CR>")
nmap("<leader>[", "<CMD>Lspsaga diagnostic_jump_next<CR>")
nmap("<leader>]", "<CMD>Lspsaga diagnostic_jump_prev<CR>")

-- FOLDING LINE
nmap("ft", "vatzf<CR>")
nmap("ff", "vaBzf")
nmap("fo", "zo")

-- file manager built in
-- nmap("<leader>e", "<CMD>Lex<CR><CR><CMD>vertical resize 30<CR>")
nmap("<leader>e", "<cmd>NvimTreeFocus<cr>")

-- TELESCOPE
nmap("<Leader>fo", "<CMD>Telescope oldfiles<CR>")
nmap("<Leader><Tab>", "<CMD>Telescope buffers<CR>")
nmap("<Leader>ff", "<CMD>Telescope find_files<CR>")
nmap("<Leader>lg", "<CMD>Telescope live_grep<CR>")
nmap("<Leader><Leader>", "<CMD>Telescope builtin<CR>")
nmap("<Leader>fk", "<CMD>Telescope keymaps<CR>")
nmap("<Leader>fd", "<CMD>Telescope diagnostics<CR>")

-- CUSTOME
imap("<C-f>", "${}<left>")
vmap("<S-j>", ":m '>+1<CR>gv=gv")
vmap("<S-k>", ":m '<-2<CR>gv=gv")
vmap("<S-m>", ":norm @q<CR>")
nmap("<leader>ww", "<CMD>w<CR>")
nmap("<leader>wa", "<CMD>wa<CR>")
nmap("r", "<C-r>")
nmap("<leader>a", "gg<S-v>G")
nmap("<leader>c", ":noh<CR>")
nmap("<leader>y", "yiw")
nmap("<leader>v", "viw")

-- JUMP LINE
nmap("m", "]m")
nmap("<S-m>", "[m")
nmap("<S-t>", "vat<Esc>j")

-- SEARCH AND REPLACE
nmap("<leader>n", [[:%s/\d\+/number/g]])
nmap("<leader>s", [[:%s/"[^"]*"/string/g]])
nmap("<C-e>", [[:s/\([a-zA-Z]\)\(-\)\([a-zA-Z]\)/\1\u\3/g<CR>]])
nmap("<S-s>s", [[:%s/\<\\>/<Left><Left><Left>]])
nmap("<S-s>/", [[:%s/]])
nmap("<S-s>d", [[/init.*/+1;?second?<Left>]]) -- ex: /leader.*/+1;?wa?

-- GIT
nmap("<leader>gd", "<CMD>Gitsign toggle_deleted<CR>")
nmap("<leader>gcl", "<CMD>Gitsign toggle_current_line_blame<CR>")
nmap("<leader>gbl", "<CMD>Gitsign blame_line<CR>")
nmap("<leader>c0", "<CMD>GitConflictChooseNone<CR>")
nmap("<leader>cb", "<CMD>GitConflictChooseBoth<CR>")
nmap("<leader>co", "<CMD>GitConflictChooseOurs<CR>")
nmap("<leader>ct", "<CMD>GitConflictChooseTheirs<CR>")
nmap("<leader>cn", "<CMD>GitConflictNextConflict<CR>")
nmap("<leader>cp", "<CMD>GitConflictPrevConflict<CR>")

-- AUTP PAIR
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
