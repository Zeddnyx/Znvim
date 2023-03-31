-- local ok, onedark = pcall(require, 'onedarkpro')
-- if not ok then return end
--
-- onedark.setup({
--   colors = {
--     cursorline = '#333741'
--   },
--   options = {
--     cursorline = true
--   },
--   styles = {
--     functions = 'bold'
--   },
-- })
-- onedark.load()
--

local ok, gruvbox = pcall(require, 'gruvbox')
if not ok then return end

gruvbox.setup({
  contrast = 'hard', -- hard, soft
  italic = {
    strings = false,
    comments = false
  },
  palette_overrides = {
    yellow = '#D69820'
  },
})
gruvbox.load()
