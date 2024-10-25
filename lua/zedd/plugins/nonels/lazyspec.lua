return {
  "nvimtools/none-ls.nvim",
  event = "LspAttach",
	lazy = true,
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("zedd.plugins.nonels.setup")
    require("zedd.plugins.nonels.keymap")
  end,
}
