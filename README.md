<h1 align="center">Znvim</h1>
<p align="center">Neovim config designed for frontend dev</p>

<p align="center">
  <img src="https://img.shields.io/badge/-HTML-ED6428?style=for-the-badge&logo=html5&logoColor=FFF&labelColor=ED6428" /> 
  <img src="https://img.shields.io/badge/-Tailwind-08BCDC?style=for-the-badge&logo=tailwindcss&logoColor=FFF&labelColor=08BCDC" /> 
  <img src="https://img.shields.io/badge/-JavaScript-EFD922?style=for-the-badge&logo=javascript&logoColor=FFF&labelColor=EFD922" /> 
  <img src="https://img.shields.io/badge/-TypeScript-3072BB?style=for-the-badge&logo=typescript&logoColor=FFF&labelColor=3072BB" /> 
  <img src="https://img.shields.io/badge/-React-08BCDC?style=for-the-badge&logo=react&logoColor=FFF&labelColor=08BCDC" /> 
  <img src="https://img.shields.io/badge/-Next-FFF?style=for-the-badge&logo=nextdotjs&logoColor=000&labelColor=FFF" /> 
  <img src="https://img.shields.io/badge/-Lua-04008F?style=for-the-badge&logo=lua&labelColor=04008F" /> 
</p>

![nvim](./preview/nvim.png)

<p align="center">
    <a href="https://github.com/Zeddnyx/Znvim">
      <img src="https://img.shields.io/github/last-commit/Zeddnyx/Znvim?style=for-the-badge&logo=github&color=7dc4e4&logoColor=D9E0EE&labelColor=302D41"/>
    </a>
</p>

## Install

clean up your config first

```
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

install

```
git clone https://github.com/ZeddNyx/Znvim ~/.config/nvim

```

run `nvim`

## List plugin

- Lsp configuration with [lsp ](https://github.com/neovim/nvim-lspconfig) and [lspkind](https://github.com/onsails/lspkind.nvim)
- Autocompletion with [cmp](https://github.com/hrsh7th/nvim-cmp)
- Autoclosing braces with [autopairs](https://github.com/windwp/nvim-autopairs)
- Themes with [gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
- Syntax highlighting with [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Comment syntax with [comment](https://github.com/numToStr/Comment.nvim)
- Indentlines with [indent blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- Custome Snippets with [vsnip](https://github.com/hrsh7th/cmp-vsnip)
- Color preview with [colorizer](https://github.com/NvChad/nvim-colorizer)
- Find files with [Telescope](https://github.com/nvim-telescope/telescope.nvim)

## Keybind

```
Space + ff - telescope find files
Space + fg - telescope live grep
Space + fb - telescope find buffer

Space + h - switch left
Space + l - switch right
Space + k - switch up
Space + j - switch down

Space + e - file manager ('q' close file manager)
Space + a - select all
Space + s - find all replace all
Space + d - find exact word

Shift + h - buffer previous
Shift + l - buffer next
Shift + c - buffer close
Shift + q + o' - buffer close all except this one

Shift + f - prettier
```
## Thanks

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
