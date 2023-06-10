## Znvim
### Neovim config designed for Frontend Development

<p align="start">
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
<details>

| Key Bindings          | Description                                                             |
|-----------------------|-------------------------------------------------------------------------|
| Autocompletion        |                                                                         |
| Autoclosing Braces    | [Autopairs](https://github.com/windwp/nvim-autopairs)                   |
| Themes                | [Gruvbox](https://github.com/ellisonleao/gruvbox.nvim)                  |
| Syntax Highlighting   | [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)        |
| Comment Syntax        | [Comment](https://github.com/numToStr/Comment.nvim)                     |
| Indentlines           | [Indentlines ](https://github.com/lukas-reineke/indent-blankline.nvim)  |
| Custome Snippet       | [Vsnip](https://github.com/hrsh7th/cmp-vsnip)                           |
| Color Preview         | [Colorizer](https://github.com/NvChad/nvim-colorizer)                   |
| Find Files            | [Telescope](https://github.com/nvim-telescope/telescope.nvim)           |
| Auto Pilot            | [Codeium](https://github.com/Exafunction/codeium.vim)                   |
</details>

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
<summary>Tekescope</summary>

| Key Bindings | Description                   |
|--------------|-------------------------------|
| SPC ff       | Telescope find files          |
| SPC fg       | Telescope live grep           |
| SPC fb       | Telescope buffers             |
| SPC gg       | Telescope git commit          |
| SPC gs       | Telescope git status          |
| SPC ll       | Telescope lsp references      |
| SPC li       | Telescope lsp implementations |
| SPC ld       | Telescope lsp definitions     |
</details>

<details>
<summary>Commenting</summary>

| Key Bindings | Description                |
|--------------|----------------------------|
| gcc          | Create/remove comment      |
| gc (visual)  | Create/remove comment      |
</details>
  
<details>
<summary>Buffers </summary>
  
| Key Bindings | Description      |
|--------------|------------------|
| Shift h      | Buffer previous  |
| Shift l      | Buffer next      |
| Shift c      | Buffer close     |
</details>
  
<details>
<summary>Lsp</summary>

| Key Bindings | Description      |
|--------------|------------------|
| Shift k      | Hover definition |
| Shift r      | Rename           |
</details>

<details>
<summary>Other</summary>

| Key Bindings | Description             |
|--------------|-------------------------|
| SPC h        | Switch left             |
| SPC j        | Switch down             |
| SPC k        | Switch up               |
| SPC l        | Switch right            |
|              |                         |
| SPC a        | Select all              |
| SPC d        | Find specific word      |
| SPC e        | File explorer           |
| SPC s        | Find and replace all    |
| SPC y        | Copy forward word       |
|              |                         |
| Shift f      | Prettier                |
| CTRL g       | Apply Codeium Reference |
</details>


## Thanks

- [Vim Indonesia](https://t.me/VimID)

## Todo
- add angular support snippets

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
