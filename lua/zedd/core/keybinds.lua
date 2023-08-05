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

-- buffer
-- nmap("<S-h>", "<CMD>bprevious<CR>", { desc = "Buffer: previous buffer" })
-- nmap("<S-l>", "<CMD>bnext<CR>", { desc = "Buffer: next buffer" })

--barbar
nmap("<S-h>", "<CMD>BufferPrevious<CR>", { desc = "Buffer: previous buffer" })
nmap("<S-l>", "<CMD>BufferNext<CR>", { desc = "Buffer: next buffer" })
nmap("<S-c>", "<CMD>bd<CR>", { desc = "Buffer: delete buffer" })
nmap("<S-q>", "<CMD>%bd|e#<CR>", { desc = "Buffer: delete all buffer except this one" })

-- lsp saga
nmap("<S-k>", "<CMD>Lspsaga hover_doc<CR>")
nmap("<S-j>", "<CMD>Lspsaga preview-definition<CR>")
nmap("<S-r>", "<CMD>Lspsaga rename<CR>")

-- switch split screen
nmap("<leader>h", "<C-w>h<CR>")
nmap("<leader>j", "<C-w>j<CR>")
nmap("<leader>k", "<C-w>k<CR>")
nmap("<leader>l", "<C-w>l<CR>")

-- nvimtree
nmap("<leader>e", "<CMD>NvimTreeOpen<CR>")

-- custome keybind
nmap("<leader>ww", "<CMD>w<CR>")
nmap("<leader>qq", "<CMD>q!<CR>")
nmap("<leader>wq", "<CMD>wq<CR>")
nmap("r", "<C-r>")
nmap("<leader>a", "gg<S-v>G")
nmap("<leader>y", "yiw")
nmap("<leader>b", "yib")
nmap("<leader>c", "/xxxxx<CR>")
nmap("<leader>s", [[:%s/]])
nmap("<leader>ss", [[/\<\\><Left><Left>]])

-- disable default keybind
nmap("<up>", "") -- disable arrow up
nmap("<left>", "") -- disable arrow left
nmap("<right>", "") -- disable arrow right
nmap("<down>", "") -- disable arrow down
nmap("<C-z>", "") -- disable z

-- comment line
nmap("cjj", [[:s/<\(.*\)/{\/*\<\1 *\/}<CR>]]) -- add {*/ *\}
vmap("cj", [[:s/\(.*\)/{\/* <\1 *\/}<CR>]]) -- add {*/ *\}
vmap("ujj", [[:s/{\/\*\(.\{-}\)\*\/}/\1/g <CR>]]) -- remove {/* *\}

nmap("cjs", [[:s/^/\/\/<CR>]]) -- add // 1 line 
vmap("cjs", [[:s/\(.*\)/\/\/ \1<CR>]]) -- add //
vmap("ujs", [[:s/\/\/\(.*\)/\1 <CR>]]) -- remove //

nmap("cs", [[:s/\(.*\)/\/* \1 *\/<CR>]])  -- add /* *\
vmap("cs", [[:s/\(.*\)/\/* \1 *\/<CR>]])  -- add /* *\
vmap("ucs", [[:s/\/\*\(.\{-}\)\*\//\1/g]]) -- remove /* *\

nmap("cll", [[:s/^/-- <CR>]]) -- add --
vmap("cl", [[:s/\(.*\)/-- \1 <CR>]]) -- add -- 
vmap("ull", [[:s/--\(.*\)/\1 <CR>]]) -- remove --


-- vim regex find and replace
-- (.*) -- find all word
-- ^ -- start of line
-- $ -- end of line
-- %s -- subtitute find and replace
-- \v -- very magic
-- (abc|cba) -- match either abc or cba
-- :%s/\v(abc|cba)//g  -- find and remove abc and cba
-- :s/\(.*\)/abc \1 abc -- add abc first and last word, using visual mode
-- :s/<\(.*\)/{\/*\<\1 *\/} -- find < and add {*/ *\} before and after
-- :4,9s/^/#/ -- add # at first line 4-9
