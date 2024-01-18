## Znvim

### Neovim config designed for Frontend Development

Fast as f\*\*\*

<p align="start">
  <img src="https://img.shields.io/badge/-Tailwind-08BCDC?style=for-the-badge&logo=tailwindcss&logoColor=FFF&labelColor=08BCDC" /> 
  <img src="https://img.shields.io/badge/-JavaScript-302D41?style=for-the-badge&logo=javascript&logoColor=EFD922&labelColor=302D41" /> 
  <img src="https://img.shields.io/badge/-TypeScript-302D41?style=for-the-badge&logo=typescript&logoColor=3072BB&labelColor=302D41" /> 
  <img src="https://img.shields.io/badge/-React-302D41?style=for-the-badge&logo=react&logoColor=08BCDC&labelColor=302D41" /> 
  <img src="https://img.shields.io/badge/-Next-FFF?style=for-the-badge&logo=nextdotjs&logoColor=000&labelColor=FFF" /> 
  <img src="https://img.shields.io/badge/-Lua-04008F?style=for-the-badge&logo=lua&labelColor=04008F" />
</p>

![nvim](./preview/preview.png)
![startuptime](./preview/startuptime.png)

<p align="center">
    <a href="https://github.com/Zeddnyx/Znvim">
      <img src="https://img.shields.io/github/last-commit/Zeddnyx/Znvim?style=for-the-badge&logo=github&color=7dc4e4&logoColor=D9E0EE&labelColor=302D41"/>
    </a>
</p>

## Plugin

<details>

| Name                | Plugin                                                                 |
| ------------------- | ---------------------------------------------------------------------- |
| Auto Pilot          | [Codeium](https://github.com/Exafunction/codeium.vim)                  |
| Autocompletion      | [Cmp](https://github.com/hrsh7th/nvim-cmp)                             |
| Autoclosing Braces  | [Autopairs](https://github.com/windwp/nvim-autopairs)                  |
| Custome Snippet     | [Vsnip](https://github.com/hrsh7th/cmp-vsnip)                          |
| Color Preview       | [Colorizer](https://github.com/NvChad/nvim-colorizer)                  |
| Find Files          | [Telescope](https://github.com/nvim-telescope/telescope.nvim)          |
| Gitsigns            | [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)                 |
| Indentlines         | [Indentlines ](https://github.com/lukas-reineke/indent-blankline.nvim) |
| Lsp                 | [Lsp](https://github.com/neovim/nvim-lspconfig)                        |
| Formmating          | [None-ls](https://github.com/nvimtools/none-ls.nvim)                   |
| Syntax Highlighting | [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)       |
| Themes              | [Gruvbox](https://github.com/Zeddnyx/gruvbox.nvim)                     |
| File Navigation     | [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)                |

</details>

## Warning

before install i suggest you to create an account codeium before install cause i use codeium if u didin't wanna using codeium just remove from list plugin in lua/zedd/plugins/init.lua

## Install

clean up your config first

```
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

install prettier, stylua

```
npm i -g prettier @johnnymorganz/stylua-bin

```

install

```
git clone https://github.com/ZeddNyx/Znvim ~/.config/nvim

```

run `nvim`

## Keybindings

Space (SPC) is my Leader key.

<details>
<summary>Telescope</summary>

| Key Bindings | Description               |
| ------------ | ------------------------- |
| SPC ff       | Telescope find files      |
| SPC lg       | Telescope live grep       |
| SPC bb       | Telescope buffers         |
| SPC gs       | Telescope git status      |
| SPC lr       | Telescope lsp references  |
| SPC ld       | Telescope lsp definitions |

</details>

<details>
<summary>Comment</summary>

| Key Bindings | Description |
| ------------ | ----------- |
| crr          | jsx         |
| cr (visual)  | jsx         |
| ur (visual)  | jsx         |
|              |             |
| cjj          | js          |
| cj (visual)  | js          |
| uj (visual)  | js          |
|              |             |
| css          | css         |
| cs (visual)  | css         |
| uc (visual)  | css         |
|              |             |
| cll          | lua         |
| cl (visual)  | lua         |
| ul (visual)  | lua         |
|              |             |
| chh          | html        |
| ch (visual)  | html        |
| uh (visual)  | html        |
|              |             |
| cgg          | #           |
| cg (visual)  | #           |
| ug (visual)  | #           |

</details>
  
<details>
<summary>Buffers </summary>
  
| Key Bindings | Description      |
|--------------|------------------|
| Shift h      | Buffer previous  |
| Shift l      | Buffer next      |
| Shift c      | Buffer close     |
| Shift q      | Buffer close all |
</details>
  
<details>
<summary>Lsp</summary>

| Key Bindings | Description         |
| ------------ | ------------------- |
| Shift s t    | Previewd definition |
| Shift s r    | Rename              |

</details>
  
<details>
<summary>Trouble</summary>

| Key Bindings | Description   |
| ------------ | ------------- |
| leader tr    | open trouble  |
| leader rc    | close trouble |

</details>

<details>
<summary>Custome & Other</summary>

| Key Bindings | Description             |
| ------------ | ----------------------- |
| SPC h        | Switch left             |
| SPC j        | Switch down             |
| SPC k        | Switch up               |
| SPC l        | Switch right            |
|              |                         |
| SPC a        | Select all              |
| SPC c        | Clean higlight          |
| SPC e        | File explorer           |
| SPC y        | Copy forward word       |
|              |                         |
| SPC ww       | Save file               |
| SPC wa       | Save all file           |
| SPC wq       | Save and quit           |
|              |                         |
| Shift f      | Prettier                |
| SHIFT s /    | Find and replace        |
| Ctrl g       | Apply Codeium Reference |

</details>

## Thanks

- Admin and all member of [Vim Indonesia](https://t.me/VimID)

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
