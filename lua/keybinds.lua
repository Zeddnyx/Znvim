-- Functional
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end
-- Functional Shortcut
function short(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = false })
end

-- normal
function nmap(shortcut, command) map('n', shortcut, command) end
-- insert
function imap(shortcut, command) map('i', shortcut, command) end
-- virtual
function vmap(shortcut, command) map('v', shortcut, command) end
-- normal ( shortkey )
function nshort(shortcut, command) short('n', shortcut, command) end

vim.g.mapleader = ' ' -- Space

-- save and exit
nmap('<leader>w', '<cmd>w<cr>')
nmap('<leader>q', '<cmd>q<cr>')
nmap('<leader>x', '<cmd>wq<cr>')

-- Tree file
nmap('<leader>e', '<cmd>NvimTreeToggle<cr>')
nmap('<leader>o', '<cmd>NvimTreeFocus<cr>')

-- Format
nmap('<leader>f', '<cmd>lua vim.lsp.buf.format({ bufnr = bufnr })<cr>')

-- Multi file 
nmap('<S-l>', '<cmd>bn<cr>') -- Next
nmap('<S-h>', '<cmd>bp<cr>') -- Previous
nmap('<S-c>', '<cmd>bd<cr>') -- Close
nmap('<leader>l', '<cmd>ls<cr>') -- Show Opened List File

-- Split Screen
nmap('<leader>h', '<C-w>s<cr>') -- Horizontal
nmap('<leader>v', '<C-w>v<cr>') -- Vertical
nmap('<leader>m', '<C-w>w<cr>') -- Switch view

-- Size Split  Screen
nmap('<S-+>', '<C-w>+<cr>') -- Decrease
nmap('<S-->', '<C-w>-<cr>') -- Increase
nmap('<leader>=', '<C-w>=<cr>') -- Restart Height Width
nmap('<S-|>', '<C-w>|<cr>') -- Expand Vertical
nmap('<S-_>', '<C-w>_<cr>') -- Expand Horizontal

-- Select all
nmap('<S-s>', 'gg<S-v>G')

-- find all and replace all
nshort('<leader>s', [[:%s/]])
