# Znvim
Znvim is config/preconfig neovim for React development, easy to use with a great set of plugins 

## Screenshot
lua file, tree
![screen_000](https://user-images.githubusercontent.com/96564938/206824413-07de9ac1-ec30-4202-9ea3-d972885c00a2.png)

Telescope
![screen_001](https://user-images.githubusercontent.com/96564938/206824475-ad07d283-d161-4af2-987f-c71b591fa655.png)

Jsx file 
![screen_004](https://user-images.githubusercontent.com/96564938/206824512-852f0fb4-9f08-403f-995c-4eee78654549.png)




## **Install**
- [packer](https://github.com/wbthomason/packer.nvim)
```
git clone https://github.com/ZeddNyx/Znvim ~/.config/nvim

nvim +PackerSync
```
type `:LspInstall` for install leangue parser


## required
- Neovim v0.7 or higher
- Packer nvim ( for install plugin )
- NerdFonts ( for icons ) 

## **LSP** Server 

- tsserver


## **List** plugin

- [NeoVim Lsp configuration with ](https://github.com/neovim/nvim-lspconfig)[,](https://github.com/onsails/lspkind.nvim)
[and](https://github.com/williamboman/mason.nvim)
- [Autocompletion with ](https://github.com/hrsh7th/nvim-cmp)
- [Autoclosing braces and html tags with ](https://github.com/windwp/nvim-autopairs)
- [Theme ](https://github.com/navarasu/onedark.nvim)
- [File navigation with ](https://github.com/kyazdani42/nvim-tree.lua)
- [Bar line with](https://github.com/romgrk/barbar.nvim)
- [Lualine with](https://github.com/nvim-lualine/lualine.nvim)
- [Syntax highlighting with](https://github.com/nvim-treesitter/nvim-treesitter)
- [Comments with](https://github.com/numToStr/Comment.nvim)
- [Indentlines with ](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Useful snippets with ](https://github.com/rafamadriz/friendly-snippets)
- [LSP Signature](https://github.com/ray-x/lsp_signature.nvim)
- [File searching, previewing image and text files and more with ](https://github.com/nvim-telescope/telescope.nvim)[and](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [terminal toggling with ](https://github.com/akinsho/toggleterm.nvim)
- [Color Preview with](https://github.com/NvChad/nvim-colorizer)
- [Git diffs and more with ](https://github.com/lewis6991/gitsigns.nvim)


## Keybind 
```

leader = 'Space'


comments = 'gcc' -- on normal mode 

tree toggle = 'Space + e'
tree focus = 'Space + o'

buffer prev = 'Shift + h'
buffer next = 'Shift + l'
buffer close = 'Shift + c'

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

