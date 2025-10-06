-- Mini.nvim highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
	-- Mini.ai (textobjects)
	hi("MiniAiTextobject", { ctermfg = colors.red, ctermbg = colors.br_black })

	-- Mini.animate
	hi("MiniAnimateCursor", { ctermfg = colors.black, ctermbg = colors.white })
	hi("MiniAnimateNormalFloat", { ctermfg = colors.white, ctermbg = colors.br_black })

	-- Mini.bufremove
	hi("MiniBufremoveConfirm", { ctermfg = colors.br_yellow, cterm = "bold" })

	-- Mini.clue
	hi("MiniClueDescGroup", { ctermfg = colors.red, cterm = "bold" })
	hi("MiniClueDescSingle", { ctermfg = colors.white })
	hi("MiniClueNextKey", { ctermfg = colors.blue, cterm = "bold" })
	hi("MiniClueNextKeyWithPostkeys", { ctermfg = colors.cyan, cterm = "bold" })
	hi("MiniClueSeparator", { ctermfg = colors.br_black })
	hi("MiniClueTitle", { ctermfg = colors.red, cterm = "bold" })

	-- Mini.comment
	hi("MiniCommentContent", { ctermfg = colors.br_black })

	-- Mini.completion
	hi("MiniCompletionActiveParameter", { ctermfg = colors.red, ctermbg = colors.br_black })

	-- Mini.cursorword
	hi("MiniCursorword", { ctermbg = colors.br_black })
	hi("MiniCursorwordCurrent", { ctermbg = colors.br_black })

	-- Mini.deps
	hi("MiniDepsChangeAdded", { ctermfg = colors.green })
	hi("MiniDepsChangeRemoved", { ctermfg = colors.red })
	hi("MiniDepsHint", { ctermfg = colors.br_cyan })
	hi("MiniDepsInfo", { ctermfg = colors.br_blue })
	hi("MiniDepsPlaceholder", { ctermfg = colors.br_black })
	hi("MiniDepsTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("MiniDepsTitleError", { ctermfg = colors.br_red, cterm = "bold" })
	hi("MiniDepsTitleSame", { ctermfg = colors.br_blue, cterm = "bold" })
	hi("MiniDepsTitleUpdate", { ctermfg = colors.br_yellow, cterm = "bold" })

	-- Mini.diff
	hi("MiniDiffSignAdd", { ctermfg = colors.green })
	hi("MiniDiffSignChange", { ctermfg = colors.yellow })
	hi("MiniDiffSignDelete", { ctermfg = colors.red })
	hi("MiniDiffOverAdd", { ctermfg = colors.green, ctermbg = colors.br_black })
	hi("MiniDiffOverChange", { ctermfg = colors.yellow, ctermbg = colors.br_black })
	hi("MiniDiffOverContext", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("MiniDiffOverDelete", { ctermfg = colors.red, ctermbg = colors.br_black })

	-- Mini.files
	hi("MiniFilesFile", { ctermfg = colors.white })
	hi("MiniFilesDirectory", { ctermfg = colors.yellow })
	hi("MiniFilesBorder", { ctermfg = colors.br_black })
	hi("MiniFilesCursorLine", { ctermbg = colors.br_black })
	hi("MiniFilesNormal", { ctermfg = colors.white })
	hi("MiniFilesTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("MiniFilesTitleFocused", { ctermfg = colors.red, ctermbg = colors.br_black, cterm = "bold" })

	-- Mini.hipatterns
	hi("MiniHipatternsFixme", { ctermfg = colors.br_red, ctermbg = colors.black, cterm = "bold" })
	hi("MiniHipatternsHack", { ctermfg = colors.br_yellow, ctermbg = colors.black, cterm = "bold" })
	hi("MiniHipatternsNote", { ctermfg = colors.br_blue, ctermbg = colors.black, cterm = "bold" })
	hi("MiniHipatternsTodo", { ctermfg = colors.br_yellow, ctermbg = colors.black, cterm = "bold" })

	-- Mini.icons
	hi("MiniIconsAzure", { ctermfg = colors.br_blue })
	hi("MiniIconsBlue", { ctermfg = colors.red })
	hi("MiniIconsCyan", { ctermfg = colors.cyan })
	hi("MiniIconsGreen", { ctermfg = colors.green })
	hi("MiniIconsGrey", { ctermfg = colors.br_black })
	hi("MiniIconsOrange", { ctermfg = colors.br_yellow })
	hi("MiniIconsPurple", { ctermfg = colors.yellow })
	hi("MiniIconsRed", { ctermfg = colors.br_red })
	hi("MiniIconsYellow", { ctermfg = colors.blue })

	-- Mini.indentscope
	hi("MiniIndentscopeSymbol", { ctermfg = colors.cyan })
	hi("MiniIndentscopeSymbolOff", { ctermfg = colors.br_black })

	-- Mini.jump
	hi("MiniJumpSpot", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })

	-- Mini.jump2d
	hi("MiniJump2dSpot", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })
	hi("MiniJump2dSpotAhead", { ctermfg = colors.black, ctermbg = colors.cyan, cterm = "bold" })
	hi("MiniJump2dSpotUnique", { ctermfg = colors.black, ctermbg = colors.br_yellow, cterm = "bold" })

	-- Mini.map
	hi("MiniMapNormal", { ctermfg = colors.white })
	hi("MiniMapSymbolCount", { ctermfg = colors.cyan })
	hi("MiniMapSymbolLine", { ctermfg = colors.cyan })
	hi("MiniMapSymbolView", { ctermfg = colors.red })

	-- Mini.notify
	hi("MiniNotifyBorder", { ctermfg = colors.br_black })
	hi("MiniNotifyNormal", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("MiniNotifyTitle", { ctermfg = colors.red, cterm = "bold" })

	-- Mini.operators
	hi("MiniOperatorsExchangeFrom", { ctermfg = colors.black, ctermbg = colors.br_yellow })

	-- Mini.pick
	hi("MiniPickBorder", { ctermfg = colors.br_black })
	hi("MiniPickBorderBusy", { ctermfg = colors.br_yellow })
	hi("MiniPickBorderText", { ctermfg = colors.cyan })
	hi("MiniPickIconDirectory", { ctermfg = colors.yellow })
	hi("MiniPickIconFile", { ctermfg = colors.white })
	hi("MiniPickHeader", { ctermfg = colors.red, cterm = "bold" })
	hi("MiniPickMatchCurrent", { ctermfg = colors.red, ctermbg = colors.br_black })
	hi("MiniPickMatchMarked", { ctermfg = colors.br_yellow, ctermbg = colors.br_black })
	hi("MiniPickMatchRanges", { ctermfg = colors.cyan, cterm = "bold" })
	hi("MiniPickNormal", { ctermfg = colors.white })
	hi("MiniPickPreviewLine", { ctermbg = colors.br_black })
	hi("MiniPickPreviewRegion", { ctermfg = colors.black, ctermbg = colors.cyan })
	hi("MiniPickPrompt", { ctermfg = colors.blue, cterm = "bold" })

	-- Mini.sessions
	hi("MiniSessionsCurrent", { ctermfg = colors.red, cterm = "bold" })
	hi("MiniSessionsFile", { ctermfg = colors.white })
	hi("MiniSessionsDirectory", { ctermfg = colors.yellow })

	-- Mini.starter
	hi("MiniStarterCurrent", { ctermfg = colors.red, cterm = "bold" })
	hi("MiniStarterFooter", { ctermfg = colors.br_black })
	hi("MiniStarterHeader", { ctermfg = colors.red, cterm = "bold" })
	hi("MiniStarterInactive", { ctermfg = colors.br_black })
	hi("MiniStarterItem", { ctermfg = colors.white })
	hi("MiniStarterItemBullet", { ctermfg = colors.cyan })
	hi("MiniStarterItemPrefix", { ctermfg = colors.blue })
	hi("MiniStarterSection", { ctermfg = colors.yellow, cterm = "bold" })
	hi("MiniStarterQuery", { ctermfg = colors.cyan })

	-- Mini.statusline
	hi("MiniStatuslineDevinfo", { ctermfg = colors.br_black, ctermbg = colors.br_black })
	hi("MiniStatuslineFileinfo", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("MiniStatuslineFilename", { ctermfg = colors.red, ctermbg = colors.br_black })
	hi("MiniStatuslineInactive", { ctermfg = colors.br_black, ctermbg = colors.br_black })
	hi("MiniStatuslineModeCommand", { ctermfg = colors.black, ctermbg = colors.br_yellow, cterm = "bold" })
	hi("MiniStatuslineModeInsert", { ctermfg = colors.black, ctermbg = colors.green, cterm = "bold" })
	hi("MiniStatuslineModeNormal", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })
	hi("MiniStatuslineModeOther", { ctermfg = colors.black, ctermbg = colors.cyan, cterm = "bold" })
	hi("MiniStatuslineModeReplace", { ctermfg = colors.black, ctermbg = colors.br_red, cterm = "bold" })
	hi("MiniStatuslineModeVisual", { ctermfg = colors.black, ctermbg = colors.yellow, cterm = "bold" })

	-- Mini.surround
	hi("MiniSurroundInput", { ctermfg = colors.black, ctermbg = colors.cyan })

	-- Mini.tabline
	hi("MiniTablineCurrent", { ctermfg = colors.red, ctermbg = colors.br_black, cterm = "bold" })
	hi("MiniTablineFill", { ctermfg = colors.br_black, ctermbg = colors.br_black })
	hi("MiniTablineHidden", { ctermfg = colors.br_black, ctermbg = colors.br_black })
	hi("MiniTablineModifiedCurrent", { ctermfg = colors.br_yellow, ctermbg = colors.br_black, cterm = "bold" })
	hi("MiniTablineModifiedHidden", { ctermfg = colors.br_yellow, ctermbg = colors.br_black })
	hi("MiniTablineModifiedVisible", { ctermfg = colors.br_yellow, ctermbg = colors.br_black })
	hi("MiniTablineTabpagesection", { ctermfg = colors.red, ctermbg = colors.br_black, cterm = "bold" })
	hi("MiniTablineVisible", { ctermfg = colors.white, ctermbg = colors.br_black })

	-- Mini.test
	hi("MiniTestEmphasis", { ctermfg = colors.red, cterm = "bold" })
	hi("MiniTestFail", { ctermfg = colors.br_red, cterm = "bold" })
	hi("MiniTestPass", { ctermfg = colors.br_blue, cterm = "bold" })

	-- Mini.trailspace
	hi("MiniTrailspace", { ctermfg = colors.br_red, ctermbg = colors.black })
end

return M
