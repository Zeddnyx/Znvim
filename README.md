# Znvim


## **Install** 
```
git clone https://github.com/Zeddnyx/Znvim ~/.config/nvim

nvim +PackerSync
```

## **List** plugin

- [LSP Config](https://github.com/neovim/nvim-lspconfig)
- [LSP Kind](https://github.com/onsails/lspkind.nvim)
- [Mason](https://github.com/williamboman/mason.nvim)
- [Nvim CMP](https://github.com/hrsh7th/nvim-cmp)
- [Auto Pairs](https://github.com/windwp/nvim-autopairs)
- [Onedark](https://github.com/navarasu/onedark.nvim)
- [Nvim Tree](https://github.com/kyazdani42/nvim-tree.lua)
- [Barbar Nvim](https://github.com/romgrk/barbar.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Comments](https://github.com/numToStr/Comment.nvim)
- [Friendly Snippets](https://github.com/rafamadriz/friendly-snippets)
- [LSP Signature](https://github.com/ray-x/lsp_signature.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Telescope UI](https://github.com/nvim-telescope/telescope-ui-select.nvim)
-[Terminal](https://github.com/akinsho/toggleterm.nvim)


## **LSP** Server 

- tsserver (javascript, typescript)
- sumenko_lua  (lua)



## Keybind 
```lua 

leader = 'Space'

exit = 'Space + q'
save and exit = 'Space + x'

comments = 'gcc' -- on normal mode 
comments_visual = 'gc'

neo_tree_toggle = 'Space + e'
neo_tree_focus = 'Space + o'

buffer_prev = 'Shift + h'
buffer_next = 'Shift + l'
buffer_close = 'Shift + c'

code_action = 'Space + c'
format_code = 'Space + lf'
trigger_completion = 'Ctrl + Space'

telescope = 'Space + ff' -- find file 

terminal horizontal = 'Space + h' 
terminal vertical = 'Space + v'
terminal float = 'Space + f'
```



# Uninstall
```
# linux/macos (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

# windows
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```
