# Znvim
<p align="center">A Neovim config designed for frontend dev</p>

<p align="center">
  <img src="https://img.shields.io/badge/-HTML-orange?style=for-the-badge&logo=html5&labelColor=302D41" /> 
  <img src="https://img.shields.io/badge/-Tailwind-blue?style=for-the-badge&logo=tailwindcss&labelColor=302D41" /> 
  <img src="https://img.shields.io/badge/-JavaScript-yellow?style=for-the-badge&logo=javascript&labelColor=302D41" /> 
  <img src="https://img.shields.io/badge/-TypeScript-blue?style=for-the-badge&logo=typescript&labelColor=302D41" /> 
  <img src="https://img.shields.io/badge/-React-blue?style=for-the-badge&logo=react&labelColor=302D41" /> 
  <img src="https://img.shields.io/badge/-Next-FFF?style=for-the-badge&logo=nextdotjs&labelColor=302D41" /> 
</p>

![nvim](./preview/nvim.png)

<p align="center">
    <a href="https://github.com/Zeddnyx/Znvim">
      <img src="https://img.shields.io/github/last-commit/Zeddnyx/Znvim?style=for-the-badge&logo=github&color=7dc4e4&logoColor=D9E0EE&labelColor=302D41"/>
    </a>
    <a href="https://github.com/Zeddnyx/Znvim">
       <img src="https://img.shields.io/badge/-Neovim-green?style=for-the-badge&logo=neovim&color=7dc4e4&labelColor=302D41"/>
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
