# Znvim
Znvim is config/preconfig neovim for React development, easy to use with a great set of plugins 

## Screenshot
Nvim
![nvim](https://user-images.githubusercontent.com/96564938/208034855-732c0c3e-38af-4c9c-adf1-6b10cd00e001.png)

Lua file with open tree file
![nvim-tree-lua](https://user-images.githubusercontent.com/96564938/208034884-890e5d99-183a-44f3-9feb-27b0e968959a.png)

Telescope
![nvim-telescope](https://user-images.githubusercontent.com/96564938/208034985-8b5fbb2c-18a1-492a-93c2-0ea9450f8bfb.png)

Snippet sugestion
![nvim-snippet](https://user-images.githubusercontent.com/96564938/208035011-bf23235d-c04f-4698-836d-0beb806d86af.png)

Snippet on select
![nvim-jsx-file](https://user-images.githubusercontent.com/96564938/208035025-f6d280ac-19dc-421f-bdda-889fc4554292.png)





## required
- Neovim v0.7 or higher
- Packer nvim ( for install plugin )
- NerdFonts ( for icons ) 


## **Install**
- [packer](https://github.com/wbthomason/packer.nvim)
```
git clone https://github.com/ZeddNyx/Znvim ~/.config/nvim

nvim +PackerSync
```
type `:LspInstall` for install leangue parser


## **LSP** Server 

- tsserver


## **List** plugin

- NeoVim Lsp configuration with [lsp ](https://github.com/neovim/nvim-lspconfig),[lspkind](https://github.com/onsails/lspkind.nvim) and [mason(https://github.com/williamboman/mason.nvim)
- Autocompletion with [cmp](https://github.com/hrsh7th/nvim-cmp)
- Autoclosing braces and html tags with [autopairs](https://github.com/windwp/nvim-autopairs)
- Themes [onedark ](https://github.com/navarasu/onedark.nvim)
- File navigation with [nvim tree](https://github.com/kyazdani42/nvim-tree.lua)
- Bar line with [barbar](https://github.com/romgrk/barbar.nvim)
- Lua line with [lualine](https://github.com/nvim-lualine/lualine.nvim)
- Syntax highlighting with [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Comment syntax with [comment](https://github.com/numToStr/Comment.nvim)
- Indentlines with [indent blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- Useful snippets with [freandly](https://github.com/rafamadriz/friendly-snippets)
- File searching, previewing image and text files and more with [telescope](https://github.com/nvim-telescope/telescope.nvim)[and](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- Color preview with [colorizer](https://github.com/NvChad/nvim-colorizer)
- Git diffs and more with [gitsigns](https://github.com/lewis6991/gitsigns.nvim)


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

