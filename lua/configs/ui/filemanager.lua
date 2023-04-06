require("neo-tree").setup({
    close_if_last_window = true,
    popup_border_style = "single",
    enable_git_status = true,
    enable_diagnostics = false,
    default_component_configs = {
        indent = {
            indent_size = 2,
            padding = 1,
            with_markers = true,
            indent_marker = "│",
            last_indent_marker = "│",
            highlight = "",
            with_expanders = nil,
            expander_collapsed = "",
            expander_expanded = "",
            expander_highlight = "NeoTreeExpander",
        },
        icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "ﰊ",
            default = "",
        },
        modified = {
            symbols = "",
            highlight = "GitSignChange"
        },
        git_status = {
            symbols = {
              -- Change type
              added     = "+",
              modified  = "m",
              deleted   = "✖",
              renamed   = "r",
              -- Status type
              untracked = "",
              ignored   = "",
              unstaged  = "u",
              staged    = "",
              conflict  = "",
            }
          },
    },
    window = {
        position = "float",
        width = 25,
        mappings = {
            ["o"] = "toggle_node",
        },
    },
    nesting_rules = {},
    filesystem = {
        filtered_items = {
            visible = false,
            hide_dotfiles = true,
            hide_gitignored = false,
            hide_by_name = {
                ".DS_Store",
                "thumbs.db",
                "node_modules",
            },
        },
        follow_current_file = true,
        hijack_netrw_behavior = "open_default",
        use_libuv_file_watcher = true,
    },
    buffers = {
        show_unloaded = true,
        window = {
            mappings = {
                ["bd"] = "buffer_delete",
            },
        },
    },
    git_status = {
        window = {
            position = "float",
            mappings = {
                ["A"] = "git_add_all",
                ["gu"] = "git_unstage_file",
                ["ga"] = "git_add_file",
                ["gr"] = "git_revert_file",
                ["gc"] = "git_commit",
                ["gp"] = "git_push",
                ["gg"] = "git_commit_and_push",
            },
        },
    },
})
