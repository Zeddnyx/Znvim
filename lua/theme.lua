local ok, darkpro = pcall(require, 'onedarkpro')
if not ok then return end

darkpro.setup({
  options = {
    cursorline = true,
    terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
    highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
  }
})
darkpro.load()
