# Znvim
Config/preconfig neovim for front end development,
easy to use with a great set of plugins


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

- Lsp configuration with [lsp ](https://github.com/neovim/nvim-lspconfig), [lspkind](https://github.com/onsails/lspkind.nvim) and [mason](https://github.com/williamboman/mason.nvim)
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
- File searching, previewing image and text files and more with [telescope](https://github.com/nvim-telescope/telescope.nvim) and [ui](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- Color preview with [colorizer](https://github.com/NvChad/nvim-colorizer)
- Git diffs and more with [gitsigns](https://github.com/lewis6991/gitsigns.nvim)


## Keybind 
```
leader = 'Space'


comments = 'gcc' -- on normal mode 
comments = 'gc'  -- on visual mode

tree toggle = 'Space + e'
tree focus = 'Space + o'

buffer prev = 'Shift + h'
buffer next = 'Shift + l'
buffer close = 'Shift + c'

trigger_completion = 'Ctrl + Space'

telescope = 'Space + ff' -- find file 

save = 'Esc' -- double click Esc to save
```


## Thanks
Speacial thanks to [AdiCahyaSaputra](https://github.com/AdiCahyaSaputra) 



## Uninstall
```
# linux/macos (unix)
rm -rf ~/.local/share/nvim
rm -rf ~/.config/nvim
rm -rf ~/.cache/nvim

# windows
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```

