local ok, alpha = pcall(require, 'alpha')
if not ok then return end

local dashboard = require 'alpha.themes.dashboard'
local banner = {
  '',
  -- '                                  ▄▄                    ',
  -- ' ███▀▀▀██████▄   ▀███▀            ██                    ',
  -- '  █▀   ███  ███▄    █                                   ',
  -- '  ▀   ███   █ ███   █ ▀██▀   ▀██▀▀███ ▀████████▄█████▄  ',
  -- '     ███    █  ▀██▄ █   ██   ▄█    ██   ██    ██    ██  ',
  -- '    ███   ▄ █   ▀██▄█    ██ ▄█     ██   ██    ██    ██  ',
  -- '   ███   ▄█ █     ███     ███      ██   ██    ██    ██  ',
  -- '  ████████████▄    ██      █     ▄████▄████  ████  ████▄',
  -- '  https://github.com/Zeddnyx',
  '',
  '',
  '',
  '',
  '// Code can be poetry too. :-)',
  '',
  '',
  '',
  '',
  '',
}

dashboard.section.buttons.val = {
  dashboard.button('e', ' New file', ':ene <BAR> startinsert<CR>'),
  dashboard.button('r', ' Recent files', ':Telescope oldfiles <CR>'),
  dashboard.button('f', ' Find file', ':Telescope find_files<CR>'),
  dashboard.button('g', ' Live grep', ':Telescope live_grep<CR>'),
  dashboard.button('n', ' Config', ':cd ~/.config/nvim/<CR> :e .<CR>'),
  dashboard.button('q', ' Exit', ':q!<CR>'),
}

local function footer()
  local version = vim.version()
  local pluginCount = vim.fn.len(vim.fn.globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1))
  local print_version = 'v' .. version.major .. '.' .. version.minor .. '.' .. version.patch
  -- local date = os.date '%d.%m.%Y'
  --local datetime = os.date '%d.%m.%Y %H:%M'
  return ' ' .. print_version .. '   ' .. pluginCount --[[ .. '   ' .. date ]]
end

dashboard.section.header.val = banner
dashboard.section.footer.val = footer()
alpha.setup(dashboard.config)
alpha.setup(dashboard.config)
