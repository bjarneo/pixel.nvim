-- Noice.nvim highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
	local config = require("pixel").config or {}
	local italic = config.disable_italics and "NONE" or "italic"

	-- Noice command line
	hi("NoiceCmdline", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("NoiceCmdlineIcon", { ctermfg = colors.red })
	hi("NoiceCmdlineIconCmdline", { ctermfg = colors.blue })
	hi("NoiceCmdlineIconFilter", { ctermfg = colors.green })
	hi("NoiceCmdlineIconHelp", { ctermfg = colors.br_blue })
	hi("NoiceCmdlineIconIncRename", { ctermfg = colors.br_yellow })
	hi("NoiceCmdlineIconInput", { ctermfg = colors.cyan })
	hi("NoiceCmdlineIconLua", { ctermfg = colors.red })
	hi("NoiceCmdlineIconSearch", { ctermfg = colors.yellow })
	hi("NoiceCmdlinePopup", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("NoiceCmdlinePopupBorder", { ctermfg = colors.br_black })
	hi("NoiceCmdlinePopupTitle", { ctermfg = colors.red, cterm = "bold" })

	-- Noice command line prompt
	hi("NoiceCmdlinePrompt", { ctermfg = colors.blue, cterm = "bold" })
	hi("NoiceCmdlinePromptTitle", { ctermfg = colors.red, cterm = "bold" })

	-- Noice LSP progress
	hi("NoiceLspProgressClient", { ctermfg = colors.cyan })
	hi("NoiceLspProgressSpinner", { ctermfg = colors.red })
	hi("NoiceLspProgressTitle", { ctermfg = colors.white })

	-- Noice messages
	hi("NoiceMessage", { ctermfg = colors.white })
	hi("NoiceMessageConfirm", { ctermfg = colors.br_blue })
	hi("NoiceMessageError", { ctermfg = colors.br_red })
	hi("NoiceMessageInfo", { ctermfg = colors.br_blue })
	hi("NoiceMessageWarn", { ctermfg = colors.br_yellow })

	-- Noice popup menu
	hi("NoicePopupmenu", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("NoicePopupmenuBorder", { ctermfg = colors.br_black })
	hi("NoicePopupmenuMatch", { ctermfg = colors.red, cterm = "bold" })
	hi("NoicePopupmenuSelected", { ctermfg = colors.white, ctermbg = colors.br_black })

	-- Noice search
	hi("NoiceSearch", { ctermfg = colors.black, ctermbg = colors.yellow })
	hi("NoiceSearchCount", { ctermfg = colors.br_blue, ctermbg = colors.br_black })

	-- Noice mini view
	hi("NoiceMini", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("NoiceMiniButton", { ctermfg = colors.red, ctermbg = colors.br_black })
	hi("NoiceMiniButtonActive", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("NoiceMiniButtonSelected", { ctermfg = colors.blue, ctermbg = colors.br_black })

	-- Noice split view
	hi("NoiceSplit", { ctermfg = colors.white })
	hi("NoiceSplitBorder", { ctermfg = colors.br_black })

	-- Noice virtual text
	hi("NoiceVirtualText", { ctermfg = colors.br_black, cterm = italic })

	-- Noice confirm dialog
	hi("NoiceConfirm", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("NoiceConfirmBorder", { ctermfg = colors.br_black })
	hi("NoiceConfirmTitle", { ctermfg = colors.red, cterm = "bold" })

	-- Noice notification
	hi("NoiceNotification", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("NoiceNotificationBorder", { ctermfg = colors.br_black })
	hi("NoiceNotificationTitle", { ctermfg = colors.red, cterm = "bold" })

	-- Noice ruler
	hi("NoiceRuler", { ctermfg = colors.br_black, ctermbg = colors.br_black })

	-- Noice format
	hi("NoiceFormatConfirm", { ctermfg = colors.br_blue })
	hi("NoiceFormatConfirmDefault", { ctermfg = colors.br_blue, cterm = "bold" })
	hi("NoiceFormatDate", { ctermfg = colors.br_black })
	hi("NoiceFormatEvent", { ctermfg = colors.cyan })
	hi("NoiceFormatKind", { ctermfg = colors.yellow })
	hi("NoiceFormatLevelDebug", { ctermfg = colors.br_black })
	hi("NoiceFormatLevelError", { ctermfg = colors.br_red })
	hi("NoiceFormatLevelInfo", { ctermfg = colors.br_blue })
	hi("NoiceFormatLevelOff", { ctermfg = colors.br_black })
	hi("NoiceFormatLevelTrace", { ctermfg = colors.br_black })
	hi("NoiceFormatLevelWarn", { ctermfg = colors.br_yellow })
	hi("NoiceFormatProgressDone", { ctermfg = colors.br_blue, ctermbg = colors.br_black })
	hi("NoiceFormatProgressTodo", { ctermfg = colors.br_black, ctermbg = colors.br_black })
	hi("NoiceFormatTitle", { ctermfg = colors.red, cterm = "bold" })

	-- Noice scrollbar
	hi("NoiceScrollbar", { ctermfg = colors.br_black, ctermbg = colors.br_black })
	hi("NoiceScrollbarThumb", { ctermfg = colors.white, ctermbg = colors.br_black })

	-- Noice cursor
	hi("NoiceCursor", { ctermfg = colors.black, ctermbg = colors.white })
end

return M
