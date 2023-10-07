local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#1D2021" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#1D2021" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#1D2021" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#1D2021" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#1D2021" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#1D2021" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#1D2021" })
end)

require("ibl").setup { indent = { highlight = highlight } }
