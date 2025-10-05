-- Blink.cmp highlights for Pixel colorscheme
local M = {}

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

function M.setup(colors)
	local config = require("pixel").config or {}
	local italic = config.disable_italics and "NONE" or "italic"

	-- Blink completion menu
	hi("BlinkCmpMenu", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("BlinkCmpMenuBorder", { ctermfg = colors.br_black })
	hi("BlinkCmpMenuSelection", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("BlinkCmpMenuSearchMatch", { ctermfg = colors.black, ctermbg = colors.yellow })

	-- Blink completion items
	hi("BlinkCmpLabel", { ctermfg = colors.white })
	hi("BlinkCmpLabelDetail", { ctermfg = colors.br_black })
	hi("BlinkCmpLabelDescription", { ctermfg = colors.br_black, cterm = italic })
	hi("BlinkCmpLabelMatch", { ctermfg = colors.red, cterm = "bold" })
	hi("BlinkCmpLabelDeprecated", { ctermfg = colors.br_black, cterm = "strikethrough" })

	-- Blink completion kinds
	hi("BlinkCmpKind", { ctermfg = colors.yellow })
	hi("BlinkCmpKindClass", { ctermfg = colors.yellow })
	hi("BlinkCmpKindColor", { ctermfg = colors.green })
	hi("BlinkCmpKindConstant", { ctermfg = colors.magenta })
	hi("BlinkCmpKindConstructor", { ctermfg = colors.red })
	hi("BlinkCmpKindEnum", { ctermfg = colors.yellow })
	hi("BlinkCmpKindEnumMember", { ctermfg = colors.magenta })
	hi("BlinkCmpKindEvent", { ctermfg = colors.cyan })
	hi("BlinkCmpKindField", { ctermfg = colors.cyan })
	hi("BlinkCmpKindFile", { ctermfg = colors.green })
	hi("BlinkCmpKindFolder", { ctermfg = colors.yellow })
	hi("BlinkCmpKindFunction", { ctermfg = colors.red })
	hi("BlinkCmpKindInterface", { ctermfg = colors.yellow })
	hi("BlinkCmpKindKeyword", { ctermfg = colors.blue })
	hi("BlinkCmpKindMethod", { ctermfg = colors.red })
	hi("BlinkCmpKindModule", { ctermfg = colors.yellow })
	hi("BlinkCmpKindNamespace", { ctermfg = colors.yellow })
	hi("BlinkCmpKindOperator", { ctermfg = colors.white })
	hi("BlinkCmpKindProperty", { ctermfg = colors.cyan })
	hi("BlinkCmpKindReference", { ctermfg = colors.yellow })
	hi("BlinkCmpKindSnippet", { ctermfg = colors.green })
	hi("BlinkCmpKindStruct", { ctermfg = colors.yellow })
	hi("BlinkCmpKindText", { ctermfg = colors.white })
	hi("BlinkCmpKindTypeParameter", { ctermfg = colors.yellow })
	hi("BlinkCmpKindUnit", { ctermfg = colors.yellow })
	hi("BlinkCmpKindValue", { ctermfg = colors.magenta })
	hi("BlinkCmpKindVariable", { ctermfg = colors.white })

	-- Blink completion sources
	hi("BlinkCmpSource", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceBuffer", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceLsp", { ctermfg = colors.br_black })
	hi("BlinkCmpSourcePath", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceSnippet", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceNvimLua", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceCmdline", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceCmdlineHistory", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceCalc", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceEmoji", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceGit", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceSpell", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceTags", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceTreesitter", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceUltisnips", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceVsnip", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceLuasnip", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceCopilot", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceCodeium", { ctermfg = colors.br_black })
	hi("BlinkCmpSourceTabNine", { ctermfg = colors.br_black })

	-- Blink completion documentation
	hi("BlinkCmpDoc", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("BlinkCmpDocBorder", { ctermfg = colors.br_black })
	hi("BlinkCmpDocSeparator", { ctermfg = colors.br_black })

	-- Blink completion ghost text
	hi("BlinkCmpGhostText", { ctermfg = colors.br_black, cterm = italic })

	-- Blink completion scrollbar
	hi("BlinkCmpScrollbar", { ctermfg = colors.br_black, ctermbg = colors.br_black })
	hi("BlinkCmpScrollbarThumb", { ctermfg = colors.white, ctermbg = colors.br_black })

	-- Blink completion signature help
	hi("BlinkCmpSignature", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("BlinkCmpSignatureBorder", { ctermfg = colors.br_black })
	hi("BlinkCmpSignatureActiveParameter", { ctermfg = colors.red, ctermbg = colors.br_black })

	-- Blink completion fuzzy matching
	hi("BlinkCmpFuzzy", { ctermfg = colors.red, cterm = "bold" })
	hi("BlinkCmpFuzzyMatch", { ctermfg = colors.black, ctermbg = colors.yellow })

	-- Blink completion preview
	hi("BlinkCmpPreview", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("BlinkCmpPreviewBorder", { ctermfg = colors.br_black })
	hi("BlinkCmpPreviewTitle", { ctermfg = colors.red, cterm = "bold" })
end

return M
