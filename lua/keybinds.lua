-- Functional
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command) map('n', shortcut, command) end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

vim.g.mapleader = ' ' -- Space
imap('jk', '<Esc>')

-- local opts = { noremap = true, silent = true }

-- Lsp Formatting / Code Action
nmap('<space>c', '<cmd>lua vim.lsp.buf.code_action()<cr>')
nmap('<space>f', '<cmd>lua vim.lsp.buf.formatting()<cr>')

-- Tree file
nmap('<Leader>e', '<cmd>NvimTreeToggle<cr>')
nmap('<Leader>o', '<cmd>NvimTreeFocus<cr>')

-- Bufferline ( Tab move/close )
--  S (SHIFT+h)
nmap('<S-h>', '<cmd>BufferPrevious<cr>')
nmap('<S-l>', '<cmd>BufferNext<cr>')
nmap('<S-c>', '<cmd>BufferClose<cr>')

-- Telescope
nmap('<space>ff', '<cmd>Telescope find_files<cr>')
nmap('<space>of', '<cmd>Telescope old_files<cr>')
