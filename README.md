<h1 align="center">Znvim</h1>
<p align="center">Neovim config designed for frontend dev</p>

<p align="center">
  <img src="https://img.shields.io/badge/-HTML-ED6428?style=for-the-badge&logo=html5&logoColor=FFF&labelColor=ED6428" /> 
  <img src="https://img.shields.io/badge/-Tailwind-08BCDC?style=for-the-badge&logo=tailwindcss&logoColor=FFF&labelColor=08BCDC" /> 
  <img src="https://img.shields.io/badge/-JavaScript-302D41?style=for-the-badge&logo=javascript&logoColor=EFD922&labelColor=302D41" /> 
  <img src="https://img.shields.io/badge/-TypeScript-302D41?style=for-the-badge&logo=typescript&logoColor=3072BB&labelColor=302D41" /> 
  <img src="https://img.shields.io/badge/-React-302D41?style=for-the-badge&logo=react&logoColor=08BCDC&labelColor=302D41" /> 
  <img src="https://img.shields.io/badge/-Next-FFF?style=for-the-badge&logo=nextdotjs&logoColor=000&labelColor=FFF" /> 
  <!-- <img src="https://img.shields.io/badge/-Lua-04008F?style=for-the-badge&logo=lua&labelColor=04008F" />  -->
</p>

![nvim](./preview/preview.png)
![startuptime](./preview/startuptime.png)

<p align="center">
    <a href="https://github.com/Zeddnyx/Znvim">
      <img src="https://img.shields.io/github/last-commit/Zeddnyx/Znvim?style=for-the-badge&logo=github&color=7dc4e4&logoColor=D9E0EE&labelColor=302D41"/>
    </a>
</p>

## Features

- Autocompletion with [cmp](https://github.com/hrsh7th/nvim-cmp)
- Autoclosing braces with [autopairs](https://github.com/windwp/nvim-autopairs)
- Themes with [gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
- Syntax highlighting with [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Comment syntax with [comment](https://github.com/numToStr/Comment.nvim)
- Indentlines with [indent blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- Custome Snippets with [vsnip](https://github.com/hrsh7th/cmp-vsnip)
- Color preview with [colorizer](https://github.com/NvChad/nvim-colorizer)
- Find files with [Telescope](https://github.com/nvim-telescope/telescope.nvim)

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


## Keybindings

Space (SPC) is my Leader key.

<details>
<summary>Searching</summary>

### Searching

| Key Bindings | Description          |
|--------------|----------------------|
| SPC ff       | Telescope find files |
| SPC fg       | Telescope live grep  |
| SPC fb       | Telescope buffers    |

</details>

<details>
<summary>Working with Project</summary>
 
 ### Woriking with Project
 
| Key Bindings | Description          |
|--------------|----------------------|
| SPC e        | File explorer        |
| SPC a        | Select all           |
| SPC s        | Find and replace all |
| SPC d        | Find specific word   |
| Shift f      | Prettier             |

</details>

<details>
<summary>Commenting</summary>

### Commenting

| Key Bindings | Description                |
|--------------|----------------------------|
| gcc          | Create/remove comment      |
| gc (visual)  | Create/remove comment      |
  
</details>
  
<details>
<summary>Buffers </summary>
  
### Buffers

| Key Bindings | Description      |
|--------------|------------------|
| Shift h      | buffer previous  |
| Shift l      | buffer next      |
| Shift c      | buffer close     |
| Shift q      | buffer close all |
  
</details>
  
  
<details>
<summary>Other</summary>

### Other VERY useful bindings

| Key Bindings | Description      |
|--------------|------------------|
| SPC h        | Switch left      |
| SPC j        | Switch down      |
| SPC k        | Switch up        |
| SPC l        | Switch right     |

</details>


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
