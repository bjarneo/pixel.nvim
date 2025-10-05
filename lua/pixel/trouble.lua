-- Trouble.nvim highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
	local config = require("pixel").config or {}
	local italic = config.disable_italics and "NONE" or "italic"

	-- Trouble window
	hi("TroubleNormal", { ctermfg = colors.white, ctermbg = colors.black })
	hi("TroubleNormalNC", { ctermfg = colors.white, ctermbg = colors.black })
	hi("TroubleText", { ctermfg = colors.white })
	hi("TroubleTextInformation", { ctermfg = colors.br_blue })
	hi("TroubleTextWarning", { ctermfg = colors.br_yellow })
	hi("TroubleTextError", { ctermfg = colors.br_red })
	hi("TroubleTextHint", { ctermfg = colors.br_cyan })

	-- Trouble signs
	hi("TroubleSignError", { ctermfg = colors.br_red })
	hi("TroubleSignWarning", { ctermfg = colors.br_yellow })
	hi("TroubleSignInformation", { ctermfg = colors.br_blue })
	hi("TroubleSignHint", { ctermfg = colors.br_cyan })
	hi("TroubleSignOther", { ctermfg = colors.br_black })

	-- Trouble counts
	hi("TroubleCount", { ctermfg = colors.cyan, ctermbg = colors.br_black, cterm = "bold" })
	hi("TroubleCountError", { ctermfg = colors.br_red, ctermbg = colors.br_black, cterm = "bold" })
	hi("TroubleCountWarning", { ctermfg = colors.br_yellow, ctermbg = colors.br_black, cterm = "bold" })
	hi("TroubleCountInformation", { ctermfg = colors.br_blue, ctermbg = colors.br_black, cterm = "bold" })
	hi("TroubleCountHint", { ctermfg = colors.br_cyan, ctermbg = colors.br_black, cterm = "bold" })

	-- Trouble location
	hi("TroubleLocation", { ctermfg = colors.cyan })
	hi("TroubleFile", { ctermfg = colors.green })
	hi("TroubleDirectory", { ctermfg = colors.yellow })
	hi("TroubleFilename", { ctermfg = colors.red })
	hi("TroubleSource", { ctermfg = colors.br_black })
	hi("TroubleCode", { ctermfg = colors.blue })
	hi("TroubleLineNr", { ctermfg = colors.br_black })
	hi("TroubleCol", { ctermfg = colors.br_black })
	hi("TroubleLspKind", { ctermfg = colors.yellow })

	-- Trouble folding
	hi("TroubleFoldIcon", { ctermfg = colors.br_black })
	hi("TroubleFoldIconClosed", { ctermfg = colors.br_black })
	hi("TroubleFoldIconOpen", { ctermfg = colors.br_black })

	-- Trouble indent
	hi("TroubleIndent", { ctermfg = colors.br_black })
	hi("TroubleIndentTop", { ctermfg = colors.br_black })
	hi("TroubleIndentMiddle", { ctermfg = colors.br_black })
	hi("TroubleIndentLast", { ctermfg = colors.br_black })
	hi("TroubleIndentFoldOpen", { ctermfg = colors.br_black })
	hi("TroubleIndentFoldClosed", { ctermfg = colors.br_black })
	hi("TroubleIndentWs", { ctermfg = colors.br_black })

	-- Trouble preview
	hi("TroublePreview", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("TroublePreviewBorder", { ctermfg = colors.br_black })
	hi("TroublePreviewTitle", { ctermfg = colors.red, cterm = "bold" })

	-- Trouble help
	hi("TroubleHelp", { ctermfg = colors.br_black, cterm = italic })
	hi("TroubleHelpHeader", { ctermfg = colors.red, cterm = "bold" })

	-- Trouble cursor
	hi("TroubleCursor", { ctermfg = colors.black, ctermbg = colors.white })
	hi("TroubleCursorLine", { ctermbg = colors.br_black })

	-- Trouble match
	hi("TroubleMatch", { ctermfg = colors.black, ctermbg = colors.yellow })

	-- Trouble virtual text
	hi("TroubleVirtualText", { ctermfg = colors.br_black, cterm = italic })

	-- Trouble pos
	hi("TroublePos", { ctermfg = colors.br_black })

	-- Trouble basename
	hi("TroubleBasename", { ctermfg = colors.red })

	-- Trouble dirname
	hi("TroubleDirname", { ctermfg = colors.yellow })

	-- Trouble todo
	hi("TroubleTodo", { ctermfg = colors.br_yellow, ctermbg = colors.black, cterm = "bold" })

	-- Trouble qflist
	hi("TroubleQfListText", { ctermfg = colors.white })
	hi("TroubleQfListFileName", { ctermfg = colors.green })
	hi("TroubleQfListLineNr", { ctermfg = colors.br_black })
	hi("TroubleQfListPos", { ctermfg = colors.br_black })

	-- Trouble loclist
	hi("TroubleLocListText", { ctermfg = colors.white })
	hi("TroubleLocListFileName", { ctermfg = colors.green })
	hi("TroubleLocListLineNr", { ctermfg = colors.br_black })
	hi("TroubleLocListPos", { ctermfg = colors.br_black })
end

return M
