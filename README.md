# Znvim
personal neovim config for react development, 
easy to modify.

## Screenshot
lua file
![withlua](https://user-images.githubusercontent.com/96564938/195473058-d77720c2-4ae5-4640-abb8-3cdbdd9dc104.png)

lua file with nvim tree
![treelua](https://user-images.githubusercontent.com/96564938/195473066-3034fe02-b4e5-4844-85f8-4f9b4d8c1b0e.png)

jsx file with nvim tree
![javas](https://user-images.githubusercontent.com/96564938/195473071-4bcbe338-05ff-4b13-bd7d-f0dbd2b73a56.png)



## **Install**
```
git clone https://github.com/ZeddNyx/Znvim ~/.config/nvim

nvim +PackerSync
```
type `:LspInstall` for install leangue parser


## required
- Neovim v0.7 or higher
- Packer nvim ( for install plugin )
- NerdFonts ( for icons ) 

## **List** plugin

- [LSP Config](https://github.com/neovim/nvim-lspconfig)
- [LSP Kind](https://github.com/onsails/lspkind.nvim)
- [Mason](https://github.com/williamboman/mason.nvim)
- [Nvim CMP](https://github.com/hrsh7th/nvim-cmp)
- [Auto Pairs](https://github.com/windwp/nvim-autopairs)
- [Onedark](https://github.com/navarasu/onedark.nvim)
- [Nvimtree](https://github.com/kyazdani42/nvim-tree.lua)
- [Barbar Nvim](https://github.com/romgrk/barbar.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Comments](https://github.com/numToStr/Comment.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Friendly Snippets](https://github.com/rafamadriz/friendly-snippets)
- [LSP Signature](https://github.com/ray-x/lsp_signature.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Telescope UI](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [Terminal](https://github.com/akinsho/toggleterm.nvim)
- [ColorPreview](https://github.com/NvChad/nvim-colorizer)


## **LSP** Server 

- tsserver
- sumenko_lua


## Keybind 
```

leader = 'Space'


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
terminal vertical   = 'Space + v'
terminal float      = 'Space + f'
```


## Thanks
- [AdiCahyaSaputra](https://github.com/AdiCahyaSaputra) 

## Uninstall
```
# linux/macos (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

# windows
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```
