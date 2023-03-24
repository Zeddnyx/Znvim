-- Functional
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

-- normal
function nmap(shortcut, command) map('n', shortcut, command) end

-- insert
function imap(shortcut, command) map('i', shortcut, command) end

-- virtual
function vmap(shortcut, command) map('v', shortcut, command) end

vim.g.mapleader = ' ' -- Space

-- save and exit
nmap('<leader>w', '<cmd>w<cr>')
nmap('<leader>q', '<cmd>q<cr>')
nmap('<leader>x', '<cmd>wq<cr>')

-- Tree file
nmap('<leader>e', '<cmd>NvimTreeToggle<cr>')
nmap('<leader>o', '<cmd>NvimTreeFocus<cr>')

-- Barbar
nmap('<S-l>', '<cmd>BufferNext<cr>')
nmap('<S-h>', '<cmd>BufferPrevious<cr>')
nmap('<S-c>', '<cmd>BufferClose<cr>')

-- Select all
nmap('<S-s>', 'gg<S-v>G')
-- find all and replace all
vim.keymap.set('n','<leader>s', [[:%s/]], {noremap = true, silent = false})

-- Format
nmap('<leader>f', '<cmd>lua vim.lsp.buf.format({ bufnr = bufnr })<cr>')
