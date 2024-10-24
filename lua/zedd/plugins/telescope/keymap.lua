local keymap = vim.keymap
local builtin = require("telescope.builtin")

keymap.set("n", "<Leader>fo", builtin.oldfiles, { desc = "Telescope: Lists previously open files" })
keymap.set("n", "<Leader><Tab>", builtin.buffers, { desc = "Telescope: Lists open buffers in current neovim instance" })
keymap.set("n", "<Leader>ff", builtin.find_files, { desc = "Telescope: Open files" })
keymap.set("n", "<Leader>lg", builtin.live_grep, { desc = "Telescope: Live grep" })
keymap.set("n", "<Leader><Leader>", builtin.builtin, { desc = "Telescope: Open builtin function" })
keymap.set("n", "<Leader>fk", builtin.keymaps, { desc = "Telescope: Lists normal mode keymappings" })
keymap.set("n", "<Leader>fd", builtin.diagnostics, { desc = "Telescope: Lists diagnostics" })
