# Znvim
Config Neovim for FrontEnd Development
(JavaScript, ReactJS, Tailwindcss, NextJS)

`startup time 230ms`


## required
- Neovim (v0.7) or the latest neovim 
<!-- - --> Packer nvim ( manager plugin )
- NerdFonts ( font for icons ) 


## **Install**
- [packer](https://github.com/wbthomason/packer.nvim)
```
git clone https://github.com/ZeddNyx/Znvim ~/.config/nvim

```
```
nvim +PackerSync
```



## **LSP** Server 
type `:LspInstall` for install leangue parser
ex `:LspInstall tsserver`

you can configurate in /plugin/lspconfig.lua

## **List** plugin
- Lsp configuration with [lsp ](https://github.com/neovim/nvim-lspconfig), [lspkind](https://github.com/onsails/lspkind.nvim) and [mason](https://github.com/williamboman/mason.nvim)
- Autocompletion with [cmp](https://github.com/hrsh7th/nvim-cmp)
- Autoclosing braces and html tags with [autopairs](https://github.com/windwp/nvim-autopairs)
- Themes [onedarkpro](https://github.com/olimorris/onedarkpro.nvim)
- File navigation with [nvim tree](https://github.com/kyazdani42/nvim-tree.lua)
- Syntax highlighting with [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Comment syntax with [comment](https://github.com/numToStr/Comment.nvim)
- Indentlines with [indent blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- Snippets with [freandly](https://github.com/rafamadriz/friendly-snippets)
- File searching, previewing and more with [telescope](https://github.com/nvim-telescope/telescope.nvim) [ui](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- Color preview with [colorizer](https://github.com/NvChad/nvim-colorizer)


## Keybind 
```

// Save and exit
save = 'Space + w'
exit = 'Space + q'
save and exit = 'Space + wq'

// Comment
comments = 'gcc' -- on normal mode 
comments = 'gc'  -- on visual mode

// File navigation
tree toggle = 'Space + e'
tree focus = 'Space + o'


// Telescope
find files = 'leader + ff'
find buffer = 'leader + fb'
live grep = 'leader + lg'
file git = 'leader + fg'

j/k = Next/Previus (normal mode)
```

## Thanks
Speacial thanks to [AdiCahyaSaputra](https://github.com/AdiCahyaSaputra)
And thanks to admin and all members of [Vim Indonesia](https://t.me/VimID)


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
