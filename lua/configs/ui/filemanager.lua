require("nvim-tree").setup({
   auto_reload_on_write = true,
   view = {
     mappings = {
       custom_only = false,
       list = {
         -- user mappings go here
       },
     },
   },
   renderer = {
     indent_width = 2,
     indent_markers = {
       enable = false,
       inline_arrows = false,
     },
     icons = {
       webdev_colors = true,
       git_placement = "after",
       modified_placement = "after",
       padding = " ",
       show = {
         folder_arrow = false,
       },
       glyphs = {
         default = "",
         symlink = "",
         bookmark = "",
         modified = "●",
         folder = {
           default = "/",
           open = "/",
           empty = "/",
           empty_open = "/",
           symlink = "/",
           symlink_open = "/",
         },
         git = {
           unstaged = "u",
           staged = "✓",
           unmerged = "",
           renamed = "➜",
           untracked = "?",
           deleted = "",
           ignored = "◌",
         },
       },
     },
     special_files = { "Cargo.toml", "Makefile", "LICENSE", "README.md", "readme.md" },
     symlink_destination = true,
   },
   hijack_directories = {
     enable = true,
     auto_open = true,
   },
   update_focused_file = {
     enable = true,
     update_root = false,
     ignore_list = {},
   },
   diagnostics = {
     enable = false,
     show_on_dirs = false,
     show_on_open_dirs = true,
     debounce_delay = 50,
     severity = {
       min = vim.diagnostic.severity.HINT,
       max = vim.diagnostic.severity.ERROR,
     },
     icons = {
       hint = "",
       info = "",
       warning = "",
       error = "",
     },
   },
   filters = {
     dotfiles = false,
     git_clean = false,
     no_buffer = false,
     custom = {},
     exclude = {},
   },
})
