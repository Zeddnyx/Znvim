local cmp = require("cmp")

local function has_words_before()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- costume color pop up snippet
vim.api.nvim_set_hl(0, "MENU", { bg = "#1D2021", fg = "#DBCCA7" })
vim.api.nvim_set_hl(0, "SELECT", { bg = "#8ec07c", fg = "#1D2021" })
vim.api.nvim_set_hl(0, "BORDER", { fg = "#8ec07c" })
--
-- window color and border pop up snippet
local window = cmp.config.window.bordered({
	border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
	winhighlight = "Normal:MENU,FloatBorder:BORDER,CursorLine:SELECT,Search:MENU",
})

-- icons in snippet
local icons = {
	Class = "Class ",
	Color = "Color ",
	Constant = "Const ",
	Constructor = "Constructor",
	Enum = "Enum ",
	EnumMember = "Enum Member",
	Field = "󰄶 ",
	File = " ",
	Folder = " ",
	Function = "Func",
	Interface = "Interface",
	Keyword = "󰌆 ",
	Method = "Method",
	Module = "󰏗 ",
	Property = " ",
	Snippet = "Snippet",
	Struct = " ",
	Text = " ",
	Unit = " ",
	Value = "󰎠 ",
	Variable = " ",
}

local function feedkey(key, mode)
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},

	--   experimental = {
	--     ghost_text = true,
	--   },

	completion = {
		autocomplete = { cmp.TriggerEvent.TextChanged },
	},

	-- icons snippet
	formatting = {
		format = function(_, vim_item)
			vim_item.kind = icons[vim_item.kind] or " "
			return vim_item
		end,
	},

	-- window snippet
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
		["<Up>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
		["<Down>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif vim.fn["vsnip#available"](1) == 1 then
				feedkey("<Plug>(vsnip-expand-or-jump)", "")
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif vim.fn["vsnip#jumpable"](-1) == 1 then
				feedkey("<Plug>(vsnip-jump-prev)", "")
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
