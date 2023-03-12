local ok, onedark = pcall(require, 'onedarkpro')
if not ok then return end

onedark.setup({
  colors = {
    cursorline = '#333741'
  },
  options = {
    cursorline = true
  },
  styles = {
    functions = 'bold'
  },
})
onedark.load()
