function map(mode, shortcut, command)
	--vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
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

--buffer
nmap("<S-h>", "<CMD>bprevious<CR>", { desc = "Buffer: focus to previous buffer" })
nmap("<S-l>", "<CMD>bnext<CR>", { desc = "Buffer: focus to next buffer" })
nmap("<S-c>", "<CMD>bd<CR>", { desc = "Buffer: delete buffer" })
nmap("<S-q>", "<CMD>%bd|e#<CR>", { desc = "Buffer: delete all buffer except current buffer" })
--nmap("<S-l>", "<CMD>BufferNext<CR>")
--nmap("<S-h>", "<CMD>BufferPrevious<CR>")

-- lsp saga
nmap("<S-s>t", "<CMD>Lspsaga peek_definition<CR>")
nmap("<S-s>r", "<CMD>Lspsaga rename<CR>")
nmap("<S-s>h", "<CMD>Lspsaga hover_doc<CR>")
nmap("<S-s>d", "<CMD>Lspsaga diagnostic_jump_next<CR>")
nmap("<S-s>a", "<CMD>Lspsaga show_workspace_diagnostics<CR>")

-- search and replace
-- nmap("<S-s>s", [[/\<\\><Left><Left>]]) -- /\<word1\>
nmap("<S-s>/", [[:%s/]])
nmap("<leader>d", [[:%s/\d\+/number/g]]) -- replace all number to number
nmap("<leader>s", [[:%s/"[^"]*"/string/g]]) -- replace all text to strig

-- folding line
nmap("zft", "vatzf<CR>") -- tag html
nmap("zff", "vaBzf") -- function that match {}
nmap("zfa", "mz?\\[<CR>%mz`z")

-- switch split screen
nmap("<leader>h", "<C-w>h<CR>::j:")
nmap("<leader>j", "<C-w>j<CR>")
nmap("<leader>k", "<C-w>k<CR>")
nmap("<leader>l", "<C-w>l<CR>")

-- resize window
nmap("<C-Left>", "<CMD>vertical resize +5<CR>")
nmap("<C-Up>", "<CMD>resize -5<CR>")
nmap("<C-Right>", "<CMD>vertical resize -5<CR>")
nmap("<C-Down>", "<CMD>resize +5<CR>")
nmap("<C-c>", "<CMD>close<CR>") -- close window

-- file manager built in
-- nmap("<leader>e", "<CMD>Lex<CR><CR><CMD>vertical resize 30<CR>")

-- custome keybind
nmap("<leader>ww", "<CMD>w<CR>")
nmap("<leader>wa", "<CMD>wa<CR>")

nmap("r", "<C-r>")

nmap("<leader>a", "gg<S-v>G") -- select all
nmap("<leader>c", ":noh<CR>") -- clean higlight
nmap("<leader>y", "yiw") -- yank forward
nmap("<leader>v", "viw") -- yank backward
nmap("m", "]m") -- next func
nmap("<S-m>", "[m") -- prev func

vmap("<S-j>", ":m '>+1<CR>gv=gv")
vmap("<S-k>", ":m '<-2<CR>gv=gv")

-- autoclose
imap("(", "()<left>")
imap("[", "[]<left>")
imap("{", "{}<left>")
imap("<", "<><left>")
imap("'", "''<left>")
imap('"', '""<left>')

-- disable default keybind
nmap("<up>", "<Nop>") -- disable arrow up
nmap("<left>", "<Nop>") -- disable arrow left
nmap("<right>", "<Nop>") -- disable arrow right
nmap("<down>", "<Nop>") -- disable arrow down
nmap("<C-z>", "<Nop>") -- disable z

-- comment
-- react tag
nmap("crr", [[:s/<\(.*\)/{\/*\<\1 *\/}<CR>:noh<CR>]])
nmap("cr", [[vat :s/\(.*\)/{\/* \1 *\/}<CR>:noh<CR>]])
vmap("cr", [[:s/\(.*\)/{\/* \1 *\/}<CR>:noh<CR>]])
-- vmap("cr", [[:s@^\(\s*\)<\(.*\)>@\1{/* \2 */}@g<CR>:noh<CR>]]) not ready yet
vmap("ur", [[:s/{\/\*\(.\{-}\)\*\/}/\1/g <CR>]])

-- css
nmap("css", [[:s/\(.*\)/\/* \1 *\/<CR>:noh<CR>]])
vmap("cs", [[:s/\(.*\)/\/* \1 *\/<CR>:noh<CR>]])
vmap("us", [[:s/\/\*\(.\{-}\)\*\//\1/g<CR>:noh<CR>]])

-- html
nmap("chh", [[:s/<\(.*\)/<!-- <\1 --><CR>:noh<CR>]])
vmap("ch", [[:s/\(.*\)/<!-- \1 --><CR>:noh<CR>]])
vmap("uh", [[:s/<!--\(.\{-}\)\-->/\1/g <CR>:noh<CR>]])

-- vim regex
-- (.*) -- find all word
-- ^ -- start of line
-- $ -- end of line
-- %s -- subtitute (find and replace)
-- \v -- very magic
-- (abc|cba) -- match either abc or cba
-- :%s/\v(abc|cba)//g  -- find and remove abc and cba
-- :s/\(.*\)/abc \1 abc -- add abc first and last word, using visual mode
-- :s/<\(.*\)/{\/*\<\1 *\/} -- find < and add {*/ *\} before and after
-- :4,9s/^/#/ -- add # at first line 4-9
