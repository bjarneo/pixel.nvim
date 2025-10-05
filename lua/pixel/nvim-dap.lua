-- nvim-dap highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
	local config = require("pixel").config or {}
	local italic = config.disable_italics and "NONE" or "italic"

	-- DAP breakpoints
	hi("DapBreakpoint", { ctermfg = colors.br_red })
	hi("DapBreakpointCondition", { ctermfg = colors.br_yellow })
	hi("DapBreakpointRejected", { ctermfg = colors.br_black })
	hi("DapLogPoint", { ctermfg = colors.br_blue })
	hi("DapStopped", { ctermfg = colors.red })

	-- DAP signs
	hi("DapBreakpointSign", { ctermfg = colors.br_red })
	hi("DapBreakpointConditionSign", { ctermfg = colors.br_yellow })
	hi("DapBreakpointRejectedSign", { ctermfg = colors.br_black })
	hi("DapLogPointSign", { ctermfg = colors.br_blue })
	hi("DapStoppedSign", { ctermfg = colors.red })

	-- DAP line highlights
	hi("DapBreakpointLine", { ctermbg = colors.br_black })
	hi("DapStoppedLine", { ctermbg = colors.br_black })

	-- DAP UI
	hi("DapUIVariable", { ctermfg = colors.white })
	hi("DapUIScope", { ctermfg = colors.yellow })
	hi("DapUIType", { ctermfg = colors.yellow })
	hi("DapUIValue", { ctermfg = colors.green })
	hi("DapUIModifiedValue", { ctermfg = colors.br_yellow })
	hi("DapUIDecoration", { ctermfg = colors.br_black })
	hi("DapUIThread", { ctermfg = colors.red })
	hi("DapUIStoppedThread", { ctermfg = colors.br_red })
	hi("DapUIFrameName", { ctermfg = colors.red })
	hi("DapUISource", { ctermfg = colors.green })
	hi("DapUILineNumber", { ctermfg = colors.br_black })
	hi("DapUIFloatBorder", { ctermfg = colors.br_black })
	hi("DapUIWatchesEmpty", { ctermfg = colors.br_black })
	hi("DapUIWatchesValue", { ctermfg = colors.green })
	hi("DapUIWatchesError", { ctermfg = colors.br_red })
	hi("DapUIBreakpointsPath", { ctermfg = colors.green })
	hi("DapUIBreakpointsInfo", { ctermfg = colors.br_blue })
	hi("DapUIBreakpointsCurrentLine", { ctermfg = colors.red, cterm = "bold" })
	hi("DapUIBreakpointsLine", { ctermfg = colors.br_black })
	hi("DapUIBreakpointsDisabledLine", { ctermfg = colors.br_black })
	hi("DapUICurrentFrameName", { ctermfg = colors.red, cterm = "bold" })
	hi("DapUIStepOver", { ctermfg = colors.red })
	hi("DapUIStepInto", { ctermfg = colors.red })
	hi("DapUIStepBack", { ctermfg = colors.red })
	hi("DapUIStepOut", { ctermfg = colors.red })
	hi("DapUIStop", { ctermfg = colors.br_red })
	hi("DapUIRestart", { ctermfg = colors.br_yellow })
	hi("DapUIPlayPause", { ctermfg = colors.br_blue })
	hi("DapUIUnavailable", { ctermfg = colors.br_black })
	hi("DapUIWinSelect", { ctermfg = colors.red, cterm = "bold" })
	hi("DapUIEndCollapseColor", { ctermfg = colors.br_black })
	hi("DapUIFloatNormal", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("DapUIFloatTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("DapUIControl", { ctermfg = colors.red })
	hi("DapUIStepOverNC", { ctermfg = colors.red })
	hi("DapUIStepIntoNC", { ctermfg = colors.red })
	hi("DapUIStepBackNC", { ctermfg = colors.red })
	hi("DapUIStepOutNC", { ctermfg = colors.red })
	hi("DapUIStopNC", { ctermfg = colors.br_red })
	hi("DapUIRestartNC", { ctermfg = colors.br_yellow })
	hi("DapUIPlayPauseNC", { ctermfg = colors.br_blue })
	hi("DapUIUnavailableNC", { ctermfg = colors.br_black })
	hi("DapUIWinSelectNC", { ctermfg = colors.red })

	-- DAP virtual text
	hi("DapVirtualText", { ctermfg = colors.br_black, cterm = italic })
end

return M
