local buffer = require("configs.ui.heirline.buffer")
local others = require("configs.ui.heirline.others")

local StatusLine = {
    -- left section
    others.ViMode,
    -- git.Branch,

    -- center section
    others.Separator,

    -- right section
    buffer.FileType,
    -- buffer.LineNumber,
}

local WinBar = {
    others.ViMode,
    buffer.FilePath,
    -- others.Navic,
    -- lsp.Diagnostics,
}

require("heirline").setup({
    statusline = StatusLine,
    winbar = WinBar,
    opts = {
        colors = {
            black = "#282828",
            white = "#ebdbb2",
            gray = "#a89984",
            red = "#fb4934",
            yellow = "#fabd2f",
            blue = "#83a598",
        },
        disable_winbar_cb = function(args)
            local buf = args.buf
            local buftype = vim.tbl_contains({ "prompt", "nofile", "help", "quickfix", "terminal" }, vim.bo[buf].buftype)
            local filetype = vim.tbl_contains({ "gitcommit", "Trouble" }, vim.bo[buf].filetype)
            return buftype or filetype
        end,
    },
})