local ok, blank = pcall(require, 'indent-blankline.nvim')
if not ok then return end

vim.opt.list = true

blank.setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
