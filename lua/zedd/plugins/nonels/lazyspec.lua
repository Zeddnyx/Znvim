return {
  "nvimtools/none-ls.nvim",
  event = "LspAttach",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("zedd.plugins.nonels.setup")
    require("zedd.plugins.nonels.keymap")
  end,
}
