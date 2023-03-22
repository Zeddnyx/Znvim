-- Functional
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command) map('n', shortcut, command) end

function imap(shortcut, command) map('i', shortcut, command) end

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

-- Format
nmap('<leader>f', '<cmd>lua vim.lsp.buf.format({timeout_ms = 1000})<cr>')
