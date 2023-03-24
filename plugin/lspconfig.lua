local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap

-- enable keybinds for available lsp server
local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- set keybinds
  -- keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)               -- show definition, references
  keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)    -- got to declaration
  -- keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)          -- see definition and make edits in window
  keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
  -- keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)      -- see available code actions
  -- keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)           -- smart rename

  -- show diagnostic
  -- keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
  -- keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
  vim.diagnostic.config({
    virtual_text = false
  })
  -- Show line diagnostics automatically in hover window
  vim.o.updatetime = 250
  vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]


  -- keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
  -- keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
  -- keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)             -- show documentation for what is under cursor
  keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)       -- see outline on right hand side
end


-- used to enable autocompletion
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

lspconfig["tsserver"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  root_dir = vim.loop.cwd
})
