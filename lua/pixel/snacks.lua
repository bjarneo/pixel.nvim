-- Snacks.nvim highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors, config)
	-- Snacks notifications
	hi("SnacksNotificationInfo", { ctermfg = colors.br_blue })
	hi("SnacksNotificationWarn", { ctermfg = colors.br_yellow })
	hi("SnacksNotificationError", { ctermfg = colors.br_red })
	hi("SnacksNotificationDebug", { ctermfg = colors.br_black })
	hi("SnacksNotificationTrace", { ctermfg = colors.br_black })
	hi("SnacksNotificationTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksNotificationBorder", { ctermfg = colors.br_black })
	hi("SnacksNotificationIcon", { ctermfg = colors.red })
	hi("SnacksNotificationFooter", { ctermfg = colors.br_black })
	hi("SnacksNotificationHistory", { ctermfg = colors.white, ctermbg = colors.br_black })

	-- Snacks dashboard
	hi("SnacksDashboardNormal", { ctermfg = colors.white, ctermbg = colors.black })
	hi("SnacksDashboardDesc", { ctermfg = colors.br_black })
	hi("SnacksDashboardFile", { ctermfg = colors.green })
	hi("SnacksDashboardDir", { ctermfg = colors.yellow })
	hi("SnacksDashboardFooter", { ctermfg = colors.br_black })
	hi("SnacksDashboardHeader", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksDashboardIcon", { ctermfg = colors.red })
	hi("SnacksDashboardKey", { ctermfg = colors.blue })
	hi("SnacksDashboardTerminal", { ctermfg = colors.white })
	hi("SnacksDashboardSpecial", { ctermfg = colors.cyan })
	hi("SnacksDashboardTitle", { ctermfg = colors.red, cterm = "bold" })

	-- Snacks indent
	hi("SnacksIndent", { ctermfg = colors.br_black })
	hi("SnacksIndentScope", { ctermfg = colors.cyan })
	hi("SnacksIndentChunk", { ctermfg = colors.red })

	-- Snacks input
	hi("SnacksInputNormal", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("SnacksInputBorder", { ctermfg = colors.br_black })
	hi("SnacksInputTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksInputIcon", { ctermfg = colors.red })
	hi("SnacksInputPrompt", { ctermfg = colors.blue })

	-- Snacks lazygit
	hi("SnacksLazygitNormal", { ctermfg = colors.white, ctermbg = colors.black })
	hi("SnacksLazygitBorder", { ctermfg = colors.br_black })
	hi("SnacksLazygitTitle", { ctermfg = colors.red, cterm = "bold" })

	-- Snacks picker
	hi("SnacksPickerNormal", { ctermfg = colors.white, ctermbg = colors.black })
	hi("SnacksPickerBorder", { ctermfg = colors.br_black })
	hi("SnacksPickerTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksPickerIcon", { ctermfg = colors.red })
	hi("SnacksPickerDir", { ctermfg = colors.yellow })
	hi("SnacksPickerFile", { ctermfg = colors.green })
	hi("SnacksPickerHeader", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksPickerFooter", { ctermfg = colors.br_black })
	hi("SnacksPickerPrompt", { ctermfg = colors.blue })
	hi("SnacksPickerCursor", { ctermfg = colors.black, ctermbg = colors.white })
	hi("SnacksPickerMatch", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksPickerPreview", { ctermfg = colors.white, ctermbg = colors.br_black })

	-- Snacks rename
	hi("SnacksRenameNormal", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("SnacksRenameBorder", { ctermfg = colors.br_black })
	hi("SnacksRenameTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksRenameIcon", { ctermfg = colors.red })

	-- Snacks scratch
	hi("SnacksScratchNormal", { ctermfg = colors.white, ctermbg = colors.black })
	hi("SnacksScratchBorder", { ctermfg = colors.br_black })
	hi("SnacksScratchTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksScratchIcon", { ctermfg = colors.red })
	hi("SnacksScratchFooter", { ctermfg = colors.br_black })

	-- Snacks terminal
	hi("SnacksTerminalNormal", { ctermfg = colors.white, ctermbg = colors.black })
	hi("SnacksTerminalBorder", { ctermfg = colors.br_black })
	hi("SnacksTerminalTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksTerminalIcon", { ctermfg = colors.red })
	hi("SnacksTerminalFooter", { ctermfg = colors.br_black })

	-- Snacks toggle
	hi("SnacksToggleNormal", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("SnacksToggleBorder", { ctermfg = colors.br_black })
	hi("SnacksToggleTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksToggleIcon", { ctermfg = colors.red })
	hi("SnacksToggleEnabled", { ctermfg = colors.br_blue })
	hi("SnacksToggleDisabled", { ctermfg = colors.br_black })

	-- Snacks win
	hi("SnacksWinNormal", { ctermfg = colors.white, ctermbg = colors.black })
	hi("SnacksWinBorder", { ctermfg = colors.br_black })
	hi("SnacksWinTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksWinIcon", { ctermfg = colors.red })
	hi("SnacksWinFooter", { ctermfg = colors.br_black })

	-- Snacks zen
	hi("SnacksZenNormal", { ctermfg = colors.white, ctermbg = colors.black })
	hi("SnacksZenBorder", { ctermfg = colors.br_black })
	hi("SnacksZenTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("SnacksZenIcon", { ctermfg = colors.red })
end

return M
