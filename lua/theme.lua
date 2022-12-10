local ok, onedark = pcall(require, 'onedark')
if not ok then return end

onedark.setup {
  style = 'deep',
  transparent = false,
  code_style = {
    variables = 'italic',
    functions = 'underline',
    comments = 'italic',
  },

  colors = {
    violet = '#BF17C4',
  },
}

onedark.load()

-- vim.g.nord_contrast = true
-- vim.g.nord_borders = false
-- vim.g.nord_disable_background = false
-- vim.g.nord_italic = false
-- vim.g.nord_uniform_diff_background = true
--
-- -- Load the colorscheme
-- require('nord').set()
