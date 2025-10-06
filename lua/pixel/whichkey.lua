-- WhichKey highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
	local config = require("pixel").config or {}
	local italic = config.disable_italics and "NONE" or "italic"

	-- WhichKey main elements
	hi("WhichKey", { ctermfg = colors.red, cterm = "bold" })
	hi("WhichKeyGroup", { ctermfg = colors.blue })
	hi("WhichKeyDesc", { ctermfg = colors.br_blue })
	hi("WhichKeySeperator", { ctermfg = colors.br_black })
	hi("WhichKeySeparator", { ctermfg = colors.br_black })
	hi("WhichKeyFloat", { ctermbg = colors.br_black })
	hi("WhichKeyValue", { ctermfg = colors.green })
	hi("WhichKeyBorder", { ctermfg = colors.br_black, ctermbg = colors.br_black })

	-- WhichKey specific key types
	hi("WhichKeyNormal", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("WhichKeyTitle", { ctermfg = colors.blue, cterm = "bold" })
	hi("WhichKeyIcon", { ctermfg = colors.cyan })
	hi("WhichKeyIconAzure", { ctermfg = colors.br_blue })
	hi("WhichKeyIconBlue", { ctermfg = colors.br_blue })
	hi("WhichKeyIconCyan", { ctermfg = colors.green })
	hi("WhichKeyIconGreen", { ctermfg = colors.green })
	hi("WhichKeyIconGrey", { ctermfg = colors.br_black })
	hi("WhichKeyIconOrange", { ctermfg = colors.br_green })
	hi("WhichKeyIconPurple", { ctermfg = colors.red })
	hi("WhichKeyIconRed", { ctermfg = colors.br_red })
	hi("WhichKeyIconYellow", { ctermfg = colors.br_yellow })

	-- WhichKey buffer/window
	hi("WhichKeyBg", { ctermbg = colors.br_black })
	hi("WhichKeyBorder", { ctermfg = colors.br_black, ctermbg = colors.br_black })

	-- WhichKey modes
	hi("WhichKeyNormalMode", { ctermfg = colors.br_blue, cterm = "bold" })
	hi("WhichKeyInsertMode", { ctermfg = colors.green, cterm = "bold" })
	hi("WhichKeyVisualMode", { ctermfg = colors.red, cterm = "bold" })
	hi("WhichKeyCommandMode", { ctermfg = colors.br_yellow, cterm = "bold" })
	hi("WhichKeyTerminalMode", { ctermfg = colors.br_green, cterm = "bold" })

	-- WhichKey operators
	hi("WhichKeyOperator", { ctermfg = colors.white })
	hi("WhichKeyMotion", { ctermfg = colors.yellow })
	hi("WhichKeyTextObject", { ctermfg = colors.cyan })

	-- WhichKey special
	hi("WhichKeySpecial", { ctermfg = colors.br_green, cterm = "bold" })
	hi("WhichKeyBuffer", { ctermfg = colors.br_black })
	hi("WhichKeyWindow", { ctermfg = colors.br_black })

	-- WhichKey hints
	hi("WhichKeyHint", { ctermfg = colors.br_cyan, cterm = italic })
	hi("WhichKeyMapping", { ctermfg = colors.white })
	hi("WhichKeyCommand", { ctermfg = colors.red })
	hi("WhichKeyPrefix", { ctermfg = colors.blue, cterm = "bold" })

	-- WhichKey registers
	hi("WhichKeyRegister", { ctermfg = colors.br_green })
	hi("WhichKeyMark", { ctermfg = colors.magenta })

	-- WhichKey numbers
	hi("WhichKeyNumber", { ctermfg = colors.cyan })
	hi("WhichKeyCount", { ctermfg = colors.cyan, cterm = "bold" })
end

return M
