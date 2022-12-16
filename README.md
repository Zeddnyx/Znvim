# Znvim
Znvim is config/preconfig neovim for React development, easy to use with a great set of plugins 

## Screenshot
![nvim](https://user-images.githubusercontent.com/96564938/208032822-0fb1cfe7-2911-4c8c-b5bb-efcd3ba53fd1.png)

![nvim-tree](https://user-images.githubusercontent.com/96564938/208032861-bf1070aa-0094-44b7-b56b-91a3089c876f.png)

![nvim-lua](https://user-images.githubusercontent.com/96564938/208032840-2180f141-0b2d-4a5c-b92e-3df738f6f693.png)

![nvim-jsx-file](https://user-images.githubusercontent.com/96564938/208032850-4fa1e84d-5ffc-4354-a4bf-2586d34a25c5.png)

![nvim-telescope](https://user-images.githubusercontent.com/96564938/208032869-1a2734f7-0372-4dfa-bd06-b9fa93a192e1.png)


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

<<<<<<< HEAD
- [NeoVim Lsp configuration with ](https://github.com/neovim/nvim-lspconfig)[,](https://github.com/onsails/lspkind.nvim)[and](https://github.com/williamboman/mason.nvim)
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
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)[Telescope UI](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [Color Preview](https://github.com/NvChad/nvim-colorizer)
>>>>>>> 


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

