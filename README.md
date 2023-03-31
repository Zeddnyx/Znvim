# Znvim

Config Neovim for FrontEnd Development
(HTML, CSS, JavaScript, ReactJS, TypeScript, NextJS)

`startup time 189ms`

## required

- [Neovim >= 0.7](https://neovim.io)
- [Packer](https://github.com/wbthomason/packer.nvim) -- plugin manager
- [NerdFonts](https://nerdfonts.com) -- icons
- [Prettierd](https://www.npmjs.com/package/@fsouza/prettierd) -- format and prettier code

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
- Bar navigation with [Barbar](https://github.com/romgrk/barbar.nvim)

## Keybind

```
// Save and exit
save = 'Space + w'
exit = 'Space + q'
save and exit = 'Space + x'

// Comment
comments = 'gcc' -- normal mode
comments = 'gc'  -- visual mode

// File navigation
tree toggle = 'Space + e'
tree focus  = 'Space + o'

// Multi Tab File
move previous = 'Shift + h'
move next     = 'Shift + l' 
close tab     = 'Shift + c'
Pin tab       = 'Shift + m'

// Split Screen 
horizontal    = 'Space + h'
verticale     = 'Space + v'
Switch screen = 'Shift + w'

// Format and Prettier
'Space + f'

// Find and replace all word match
'Space + s'

// Select all
'Shift + s'

// Diagnostic
go to diagnostic = 'Shift + d'
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
