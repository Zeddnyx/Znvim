local ok, toggleterm = pcall(require, 'toggleterm')
if not ok then return end

toggleterm.setup {
  open_mapping = [[<c-\>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  close_on_exit = true, -- close the terminal window when the process exits
}
