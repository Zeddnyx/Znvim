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
nmap('<S-h>', '<cmd>BufferPrevious<cr>') -- Previuos
nmap('<S-l>', '<cmd>BufferNext<cr>') -- Next
nmap('<S-c>', '<cmd>BufferClose<cr>') -- Close
nmap('<S-m>', '<cmd>BufferPin<cr>') -- Close


-- Split Screen
nmap('<leader>h', '<C-w>s<cr>') -- Horizontal
nmap('<leader>v', '<C-w>v<cr>') -- Vertical
nmap('<S-w>', '<C-w>w<cr>') -- Switch view

-- Select all
nmap('<S-s>', 'gg<S-v>G')

-- find all and replace all
nshort('<leader>s', [[:%s/]])
