local ok, darkpro = pcall(require, 'onedarkpro')
if not ok then return end

darkpro.setup({
  plugins = { -- Override which plugin highlight groups are loaded
    barbar = true,
    dashboard = true,
    indentline = true,
    neo_tree = true,
    nvim_cmp = true,
    nvim_lsp = true,
    nvim_tree = true,
    nvim_ts_rainbow = true,
    packer = true,
    telescope = true,
    treesitter = true,
  },
  options = {
    cursorline = true,
    terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
    highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
  }
})
darkpro.load()
