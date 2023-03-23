# Znvim

Config Neovim for FrontEnd Development
(HTML, CSS, JavaScript, ReactJS, TypeScript, NextJS)

`startup time 188ms`
![screenshot_002](https://user-images.githubusercontent.com/96564938/226897059-cbe43805-758e-4d65-9905-6f4875c8a628.png)

![screenshot_003](https://user-images.githubusercontent.com/96564938/226897549-3d60721a-2b9a-45db-a3b0-47d79f1a05b8.png)

## required

- [Neovim >= 0.7](https://neovim.io)
- [Packer](https://github.com/wbthomason/packer.nvim)
- [NerdFonts](https://nerdfonts.com)

## Install

```
git clone https://github.com/ZeddNyx/Znvim ~/.config/nvim

```

run `nvim +PackerSync`

## List plugin

- Lsp configuration with [lsp ](https://github.com/neovim/nvim-lspconfig), [lspkind](https://github.com/onsails/lspkind.nvim) and [mason](https://github.com/williamboman/mason.nvim)
- Autocompletion with [cmp](https://github.com/hrsh7th/nvim-cmp)
- Autoclosing braces and html tags with [autopairs](https://github.com/windwp/nvim-autopairs)
- Themes [onedarkpro](https://github.com/olimorris/onedarkpro.nvim)
- File navigation with [nvim tree](https://github.com/kyazdani42/nvim-tree.lua)
- Syntax highlighting with [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Comment syntax with [comment](https://github.com/numToStr/Comment.nvim)
- Indentlines with [indent blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- Snippets with [freandly](https://github.com/rafamadriz/friendly-snippets)
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

// Format
// Automaticly format and prettier code when save
format = 'Space + f'

```

## Thanks

- [AdiCahyaSaputra](https://github.com/AdiCahyaSaputra)
- [Vim Indonesia](https://t.me/VimID)

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
