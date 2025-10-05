-- Indent Blankline highlights for Pixel colorscheme
local M = {}

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

function M.setup(colors, config)
	-- Indent Blankline v2 (legacy)
	hi("IndentBlanklineChar", { ctermfg = colors.br_black })
	hi("IndentBlanklineContextChar", { ctermfg = colors.br_blue })
	hi("IndentBlanklineContextStart", { cterm = "underline" })
	hi("IndentBlanklineSpaceChar", { ctermfg = colors.br_black })
	hi("IndentBlanklineSpaceCharBlankline", { ctermfg = colors.br_black })

	-- Indent Blankline v3 (current)
	hi("IblIndent", { ctermfg = colors.br_black })
	hi("IblWhitespace", { ctermfg = colors.br_black })
	hi("IblScope", { ctermfg = colors.br_blue })

	-- Rainbow indent colors for v3
	hi("RainbowDelimiterRed", { ctermfg = colors.br_red })
	hi("RainbowDelimiterYellow", { ctermfg = colors.br_yellow })
	hi("RainbowDelimiterBlue", { ctermfg = colors.br_blue })
	hi("RainbowDelimiterOrange", { ctermfg = colors.br_green })
	hi("RainbowDelimiterGreen", { ctermfg = colors.green })
	hi("RainbowDelimiterViolet", { ctermfg = colors.red })
	hi("RainbowDelimiterCyan", { ctermfg = colors.green })

	-- Mini.indentscope (alternative plugin)
	hi("MiniIndentscopeSymbol", { ctermfg = colors.br_blue })
	hi("MiniIndentscopeSymbolOff", { ctermfg = colors.br_black })

	-- Indent highlight groups for different nesting levels
	hi("IndentLevel1", { ctermfg = colors.br_black })
	hi("IndentLevel2", { ctermfg = colors.br_black })
	hi("IndentLevel3", { ctermfg = colors.br_black })
	hi("IndentLevel4", { ctermfg = colors.br_black })
	hi("IndentLevel5", { ctermfg = colors.br_black })
	hi("IndentLevel6", { ctermfg = colors.br_black })

	-- Context highlighting
	hi("IndentContext", { ctermfg = colors.br_blue, ctermbg = colors.black })
	hi("IndentContextStart", { cterm = "underline" })
	hi("IndentContextEnd", { cterm = "underline" })

	-- Scope highlighting
	hi("IndentScope", { ctermfg = colors.br_blue })
	hi("IndentScopeActive", { ctermfg = colors.br_blue, cterm = "bold" })
	hi("IndentScopeInactive", { ctermfg = colors.br_black })

	-- Error highlighting
	hi("IndentError", { ctermfg = colors.br_red, ctermbg = colors.black })
	hi("IndentWarning", { ctermfg = colors.br_yellow, ctermbg = colors.black })

	-- Custom bracket highlighting
	hi("IndentBracket", { ctermfg = colors.white })
	hi("IndentBracketActive", { ctermfg = colors.br_blue, cterm = "bold" })

	-- Fold integration
	hi("IndentFold", { ctermfg = colors.br_black })
	hi("IndentFoldActive", { ctermfg = colors.br_blue })

	-- Virtual text
	hi("IndentVirtualText", { ctermfg = colors.br_black })
	hi("IndentVirtualTextActive", { ctermfg = colors.br_blue })

	-- Line highlighting
	hi("IndentLine", { ctermfg = colors.br_black })
	hi("IndentLineActive", { ctermfg = colors.br_blue })
	hi("IndentLineContext", { ctermfg = colors.br_blue, ctermbg = colors.br_black })
end

return M
