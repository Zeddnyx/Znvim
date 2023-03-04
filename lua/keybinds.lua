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

-- Tree file
nmap('<Leader>e', '<cmd>NvimTreeToggle<cr>')
nmap('<Leader>o', '<cmd>NvimTreeFocus<cr>')

-- Telescope
nmap('<space>ff', '<cmd>Telescope find_files<cr>')
nmap('<space>fg', '<cmd>Telescope live_grep<cr>')
nmap('<space>fb', '<cmd>Telescope buffers<cr>')
