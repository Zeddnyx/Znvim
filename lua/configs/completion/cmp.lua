local cmp = require("cmp")

local function has_words_before()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- costume color
vim.api.nvim_set_hl(0, 'MyMenu', {bg= "#1D2021", fg= '#DBCCA7'})
vim.api.nvim_set_hl(0, 'MySelect', {bg= "#FB4934", fg= '#1D2021'})

-- window color and border
local window = cmp.config.window.bordered({
	border = "single",
	winhighlight = "Normal:MyMenu,FloatBorder:FloatBorder,CursorLine:MySelect,Search:IncSearch",
})

-- icons in floating window
local icons = {
  Text = "",
  Variable = "󰌹",
  Snippet = ""
}

cmp.setup({
	snippet = {
		expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
		end,
	},

	completion = {
		autocomplete = { cmp.TriggerEvent.TextChanged },
	},

  -- format icons
  formatting = {
    format = function(_, vim_item)
      vim_item.kind = icons[vim_item.kind] or ""
      return vim_item
    end
  },

	window = {
		completion = window,
		documentation = window,
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "nvim_lua" },
		{ name = "vsnip" },
		{
			name = "buffer",
			option = {
				get_bufnrs = function()
					return vim.api.nvim_list_bufs()
				end,
			},
		},
	},
	mapping = {
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	},
})

-- If you want insert `(` after select function or method item
-- local cmp_autopairs = require("nvim-autopairs.completion.cmp")
-- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
