local ok, onedark = pcall(require, 'onedark')
if not ok then return end

onedark.setup {
  style = 'darker',
  transparent = false,
  code_style = {
    variables = 'italic',
    functions = 'italic',
    comments = 'italic',
  },

  colors = {
    violet = '#BF17C4',
  },
}

onedark.load()
