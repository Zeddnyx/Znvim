# Znvim

## screenshot
![tree](https://user-images.githubusercontent.com/96564938/194686523-9a5fd11c-14da-4c84-bf19-f13f85cfdcc9.png)

![jsx](https://user-images.githubusercontent.com/96564938/194686517-bec704d5-b1ae-4c65-bca4-67347bf35f4e.png)

![autocomplite](https://user-images.githubusercontent.com/96564938/194686526-b2a2857c-9b33-424d-88c1-cb2fd4614428.png)




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
- [ Terminal.nvim](https://github.com/akinsho/toggleterm.nvim)


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

## Thanks
- [AdiCahyaSaputra](https://github.com/AdiCahyaSaputra)


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
