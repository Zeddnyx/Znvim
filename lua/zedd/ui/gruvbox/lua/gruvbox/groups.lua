local c = require("gruvbox.colors")

local M = {
	--See :h highlight-groups
	ColorColumn = { fg = c.light0 },
	Conceal = { fg = c.blue },
	CurSearch = { bg = c.bright_aqua, fg = c.dark0 },
	Cursor = { bg = c.blue, fg = c.dark0 },
	ICursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },
	CursorColumn = { bg = c.dark2 },
	CursorLine = { link = "CursorColumn" },
	Directory = { fg = c.bright_green, bold = true },
	DiffAdd = { fg = c.bright_green, bold = true },
	DiffChange = { fg = c.cyan, bold = true },
	DiffDelete = { fg = c.red, bold = true },
	DiffText = { fg = c.yellow, bold = true },
	DiffUnstaged = { fg = c.yellow, bold = true },
	EndOfBuffer = { link = "ColorColumn" },
	TermCursor = { link = "Cursor" },
	TermCursorNC = { link = "TermCursor" },
	ErrorMsg = { bg = c.red, fg = c.dark0 },
	WinSeparator = { fg = c.light0 },
	Folded = { fg = c.dark1 },
	FoldedColumn = { link = "Folded" },
	SignColumn = { fg = c.dark3 },
	IncSearch = { link = "CurSearch" },
	Substitute = { link = "IncSearch" },
	LineNr = { link = "SignColumn" },
	LineNrAbove = { link = "SignColumn" },
	LineNrBelow = { link = "SignColumn" },
	CursorLineNr = { link = "CursorLine" },
	CursorLineFold = { link = "SignColumn" },
	CursorLineSign = { link = "SignColumn" },
	MatchParen = { bg = c.dark1 },
	ModeMsg = { fg = c.light0 },
	MsgArea = { fg = c.light0 },
	MsgSeparator = { fg = c.light1 },
	MoreMsg = { fg = c.light1 },
	NonText = { fg = c.light1 },
	Normal = { bg = c.dark0, fg = c.light0 },
	NormalFloat = { link = "Normal" },
	FloatBorder = { fg = c.light0 },
	FloatTitle = { fg = c.light0, bold = true },
	NormalNC = { link = "Normal" },
	Pmenu = { bg = c.dark0 },
	PmenuSel = { bg = c.light0, fg = c.dark0 },
	PmenuKind = { link = "Pmenu" },
	PmenuKindSel = { link = "PmenuSel" },
	PmenuExtra = { link = "Pmenu" },
	PmenuExtraSel = { link = "PmenuSel" },
	PmenuSbar = { link = "Normal" },
	PmenuThumb = { link = "PmenuSel" },
	Question = { link = "Normal" },
	QuickFixLine = { fg = c.yellow, reverse = true },
	Search = { link = "IncSearch" },
	SpecialKey = { fg = c.purple },
	SpellBad = { fg = c.light0, undercurl = true, bold = true },
	SpellCap = { link = "SpellBad" },
	SpellLocal = { link = "SpellBad" },
	SpellRare = { link = "SpellBad" },
	StatusLine = { bg = c.dark0, fg = c.bright_aqua },
	StatusLineNC = { bg = "NONE" },
	TabLine = { bg = c.dark0, fg = c.light0 },
	TabLineFill = { link = "TabLine" },
	TabLineSel = { bg = c.dark1 },
	Title = { bold = true },
	Visual = { bg = c.blue, fg = c.dark0 },
	VisualNOS = { bg = c.dark1 },
	WarningMsg = { fg = c.yellow },
	Whitespace = { fg = c.dark1 },
	WildMenu = { bg = c.dark1, fg = c.light0 },
	WinBar = { bg = c.dark0, fg = c.light0 },
	WinBarNC = { link = "WinBar" },
	--
	--See :h group-name
	Comment = { fg = c.gray },
	Constant = { fg = c.purple },
	String = { fg = c.bright_green },
	Character = { fg = c.purple },
	Number = { fg = c.purple },
	Boolean = { fg = c.purple },
	Float = { fg = c.purple },
	Identifier = { fg = c.blue },
	Function = { fg = c.bright_green, bold = true },
	Statement = { fg = c.red },
	Conditional = { fg = c.blue},
	Repeat = { fg = c.red },
	Label = { fg = c.red },
	Operator = { fg = c.bright_red },
	Keyword = { fg = c.blue },
	KeywordFunction = { fg = c.bright_aqua },
	Exception = { fg = c.purple },
	PreProc = { fg = c.bright_green },
	Include = { fg = c.bright_aqua }, -- import text color
	Define = { fg = c.bright_green },
	Macro = { fg = c.bright_green },
	PreCondit = { fg = c.bright_green },
	Type = { fg = c.bright_yellow },
	StorageClass = { fg = c.orange },
	Structure = { fg = c.bright_yellow },
	TypeDef = { fg = c.yellow },
	Special = { fg = c.orange },
	SpecialChar = { fg = c.purple },
	SpecialComment = { fg = c.red },
	Debug = { fg = c.red },
	Underline = { underline = true },
	Error = { fg = c.red, undercurl = true },
	Todo = { fg = c.dark0, bg = c.light0, bold = true },
	Underlined = { fg = c.bright_aqua, underline = true }, -- text link html
	Attribute = { fg = c.bright_yellow }, -- attribute html
	Tag = { fg = c.red }, -- tag html

	--See :h html
	htmlTag = { fg = c.bright_red },
	htmlEndTag = { fg = c.bright_aqua },
	htmlString = { fg = c.bright_green },
	htmlLink = { fg = c.bright_aqua },
	tsxTag = { fg = c.bright_yellow },
	tsxTagName = { fg = c.bright_yellow },

	--
	--See :h lsp-highlight
	--LspReferenceText={},
	--LspReferenceRead={},
	--LspReferenceWrite={},
	--
	--See :h diagnostic-highlights
	DiagnosticError = { fg = c.red },
	DiagnosticWarn = { fg = c.yellow },
	DiagnosticInfo = { fg = c.blue },
	DiagnosticHint = { fg = c.bright_aqua },
	DiagnosticSignError = { fg = c.red },
	DiagnosticSignWarn = { fg = c.yellow },
	DiagnosticSignInfo = { fg = c.blue },
	DiagnosticSignHint = { fg = c.aqua },
	DiagnosticVirtualTextError = { fg = c.red },
	DiagnosticVirtualTextWarn = { fg = c.yellow },
	DiagnosticVirtualTextInfo = { fg = c.blue },
	DiagnosticVirtualTextHint = { fg = c.aqua },
	DiagnosticLineNrError = { fg = c.light0, bg = c.bright_red },
	DiagnosticLineNrWarn = { fg = c.light0, bg = c.yellow },
	DiagnosticLineNrInfo = { fg = c.light0, bg = c.blue },
	DiagnosticLineNrHint = { fg = c.light0, bg = c.aqua },
	--
	--See :h treesitter-highlight-groups
	["@text.literal"] = { link = "Comment" },
	["@text.reference"] = { link = "Identifier" },
	["@text.title"] = { link = "Title" },
	["@text.uri"] = { link = "Underlined", fg = c.bright_aqua },
	["@text.underline"] = { link = "Underlined", fg = c.bright_aqua },
	["@text.todo"] = { link = "Todo" },
	["@comment"] = { link = "Comment" },
	["@punctuation"] = { link = "Delimiter" },
	["@punctuation.bracket"] = { link = "Delimiter" },
	["@constant"] = { link = "Constant" },
	["@constant.builtin"] = { link = "Special" },
	["@constant.macro"] = { link = "Define" },
	["@define"] = { link = "Define" },
	["@macro"] = { link = "Macro" },
	["@string"] = { link = "String" },
	["@string.escape"] = { link = "SpecialChar" },
	["@string.special"] = { link = "SpecialChar" },
	["@character"] = { link = "Character" },
	["@character.special"] = { link = "SpecialChar" },
	["@number"] = { link = "Number" },
	["@boolean"] = { link = "Boolean" },
	["@float"] = { link = "Float" },
	["@function"] = { link = "Function" },
	["@function.builtin"] = { link = "Special" },
	["@function.macro"] = { link = "Macro" },
	["@parameter"] = { link = "Identifier" },
	["@method"] = { link = "Function" },
	["@field"] = { link = "Identifier" },
	["@property"] = { link = "Identifier" },
	["@constructor"] = { link = "Special" },
	["@conditional"] = { link = "Conditional" },
	["@repeat"] = { link = "Repeat" },
	["@label"] = { link = "Label" },
	["@operator"] = { link = "Operator" },
	["@keyword"] = { link = "Keyword" }, -- variable, export default
	["@keyword.function"] = { link = "KeywordFunction" }, -- function
	["@exception"] = { link = "Exception" },
	["@variable"] = { fg = c.light0 },
	["@type"] = { link = "Type" },
	["@type.definition"] = { link = "Typedef" },
	["@storageclass"] = { link = "StorageClass" },
	["@structure"] = { link = "Structure" },
	["@namespace"] = { link = "Identifier" },
	["@include"] = { link = "Include" },
	["@preproc"] = { link = "PreProc" },
	["@debug"] = { link = "Debug" },
	["@tag"] = { link = "Tag" },
	["@tag.attribute"] = { link = "Attribute" },
	["@tag.delimiter"] = { link = "Tag" },

	--See :h lsp-semantic-highlight
	["@lsp.type.class"] = { link = "Structure" },
	["@lsp.type.decorator"] = { link = "Function" },
	["@lsp.type.enum"] = { link = "Structure" },
	["@lsp.type.enumMember"] = { link = "Constant" },
	["@lsp.type.function"] = { link = "Function" },
	["@lsp.type.interface"] = { link = "Structure" },
	["@lsp.type.macro"] = { link = "Macro" },
	["@lsp.type.method"] = { link = "Function" },
	["@lsp.type.namespace"] = { link = "Structure" },
	["@lsp.type.parameter"] = { link = "Identifier" },
	["@lsp.type.property"] = { link = "Identifier" },
	["@lsp.type.struct"] = { link = "Structure" },
	["@lsp.type.type"] = { link = "Type" },
	["@lsp.type.typeParameter"] = { link = "TypeDef" },
	["@lsp.type.variable"] = { link = "@Variable" },
	--
	--See :h cmp-highlight
	CmpItemAbbr = { bg = c.dark0, fg = c.light0 },
	CmpItemAbbrDeprecated = { bg = c.dark0, fg = c.light3 },
	CmpDocumentation = { link = "NormalFloat" },
	CmpDocumentationBorder = { link = "FloatBorder" },
  CmpItemKind = { fg = c.bright_aqua },
	--
	--See :h gitsigns-highlight-groups
	GitSignAdd = { link = "DiffAdd" },
	GitSignChange = { link = "DiffChange" },
	GitSignDelete = { link = "DiffDelete" },
	GitSignChangeDelete = { link = "DiffText" },
	GitSignUnstaged = { link = "DiffUnstaged" },
	--
	--See telescope.nvim/plugin/telescope.lua
	TelescopeSelection = { bg = c.bright_aqua, fg = c.dark0 },
	TelescopeSelectionCaret = { bg = c.bright_aqua, fg = c.dark0 },
	TelescopeMultiSelection = { fg = c.bright_aqua},
	TelescopeMatching = { bg = c.bright_aqua, fg = c.dark0 },
	TelescopePromptPrefix = { fg = c.light0 },
	TelescopeNormal = { link = "NormalFloat" },
	TelescopeBorder = { link = "FloatBorder" },
	TelescopePreviewBorder = { link = "FloatBorder" },
	TelescopePromptBorder = { link = "FloatBorder" },
	TelescopeResultsBorder = { link = "FloatBorder" },
	--
	--See :h translator-highlight
	TranslatorBorder = { link = "FloatBorder" },

	--See h nvm-tree.nvim/lua/nvim-tree/colors.lua
	NvimTreeImageFile = { fg = c.purple },
	NvimTreeSpecialFile = { fg = c.orange, bold = true, underline = true },
	NvimTreeExecFile = { fg = c.bright_green, bold = true },
	NvimTreeOpenedFile = { fg = c.orange, bold = true },
	NvimTreeModifiedFile = { fg = c.orange, bold = true },
	NvimTreeFolderIcon = { fg = c.bright_yellow, bold = true },
	NvimTreeFolderName = { fg = c.bright_yellow, bold = true },
	NvimTreeOpenedFolderName = { fg = c.bright_yellow, bold = true },
	NvimTreeOpenedFolderIcon = { fg = c.bright_yellow, bold = true },
	NvimTreeClosedFolderIcon = { fg = c.bright_yellow, bold = true },
	NvimTreeSymlinkFolderName = { fg = c.bright_yellow, bold = true },
	NvimTreeEmptyFolderName = { fg = c.gray },
	NvimTreeOpenedEmptyFolderName = { fg = c.gray },

  NvimTreeGitUntracked = { fg = c.bright_aqua },
  NvimTreeGitDirty = { fg = c.bright_aqua },
  NvimTreeGitIgnored = { fg = c.gray },
  NvimTreeGitStaged = { fg = c.bright_aqua },
  NvimTreeGitMerge = { fg = c.bright_aqua },
  NvimTreeGitRenamed = { fg = c.bright_aqua },
  NvimTreeGitNew = { fg = c.bright_aqua },

	--See barbar.nvim
	BufferCurrent = { bg = c.dark0, fg = c.light0 },
	BufferCurrentIndex = { bg = c.dark3, fg = c.light0 },
	BufferCurrentMod = { bg = c.dark0, fg = c.red },
	BufferCurrentSign = { bg = c.dark0, fg = c.light0 },
	BufferCurrentTarget = { bg = c.dark0, fg = c.orange },
	BufferVisible = { bg = c.dark0, fg = c.light0 },
	BufferVisibleIndex = { bg = c.dark0, fg = c.light0 },
	BufferVisibleMod = { bg = c.dark0, fg = c.red },
	BufferVisibleSign = { bg = c.dark0, fg = c.light0 },
	BufferVisibleTarget = { bg = c.dark0, fg = c.orange },
	BufferInactive = { bg = c.dark2, fg = c.light3 },
	BufferInactiveIndex = { bg = c.dark2, fg = c.dark3 },
	BufferInactiveMod = { bg = c.dark2, fg = c.red },
	BufferInactiveSign = { bg = c.dark0, fg = c.light0 },

	--See lspsaga.nvim
	SagaWinbarFolder = { bg = c.dark0, fg = c.yellow },
}

return M