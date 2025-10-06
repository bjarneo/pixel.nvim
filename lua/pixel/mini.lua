-- Mini.nvim highlights for Pixel colorscheme
-- Only includes commonly used mini plugins

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
-- Mini.ai (textobjects) - commonly used
hi("MiniAiTextobject", { ctermfg = colors.red, ctermbg = colors.br_black })

-- Mini.cursorword - commonly used
hi("MiniCursorword", { ctermbg = colors.br_black })
hi("MiniCursorwordCurrent", { ctermbg = colors.br_black })

-- Mini.diff - commonly used
hi("MiniDiffSignAdd", { ctermfg = colors.green })
hi("MiniDiffSignChange", { ctermfg = colors.yellow })
hi("MiniDiffSignDelete", { ctermfg = colors.red })
hi("MiniDiffOverAdd", { ctermfg = colors.green, ctermbg = colors.br_black })
hi("MiniDiffOverChange", { ctermfg = colors.yellow, ctermbg = colors.br_black })
hi("MiniDiffOverDelete", { ctermfg = colors.red, ctermbg = colors.br_black })

-- Mini.files - commonly used
hi("MiniFilesFile", { ctermfg = colors.white })
hi("MiniFilesDirectory", { ctermfg = colors.yellow })
hi("MiniFilesBorder", { ctermfg = colors.br_black })
hi("MiniFilesCursorLine", { ctermbg = colors.br_black })
hi("MiniFilesTitle", { ctermfg = colors.red, cterm = "bold" })

-- Mini.hipatterns (TODO/FIXME/etc) - commonly used
hi("MiniHipatternsFixme", { ctermfg = colors.br_red, ctermbg = colors.black, cterm = "bold" })
hi("MiniHipatternsHack", { ctermfg = colors.br_yellow, ctermbg = colors.black, cterm = "bold" })
hi("MiniHipatternsNote", { ctermfg = colors.br_blue, ctermbg = colors.black, cterm = "bold" })
hi("MiniHipatternsTodo", { ctermfg = colors.br_yellow, ctermbg = colors.black, cterm = "bold" })

-- Mini.icons - commonly used
hi("MiniIconsAzure", { ctermfg = colors.br_blue })
hi("MiniIconsBlue", { ctermfg = colors.red })
hi("MiniIconsCyan", { ctermfg = colors.cyan })
hi("MiniIconsGreen", { ctermfg = colors.green })
hi("MiniIconsGrey", { ctermfg = colors.br_black })
hi("MiniIconsOrange", { ctermfg = colors.br_yellow })
hi("MiniIconsPurple", { ctermfg = colors.yellow })
hi("MiniIconsRed", { ctermfg = colors.br_red })
hi("MiniIconsYellow", { ctermfg = colors.blue })

-- Mini.indentscope - commonly used
hi("MiniIndentscopeSymbol", { ctermfg = colors.cyan })
hi("MiniIndentscopeSymbolOff", { ctermfg = colors.br_black })

-- Mini.jump/jump2d - commonly used
hi("MiniJumpSpot", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })
hi("MiniJump2dSpot", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })

-- Mini.notify - commonly used
hi("MiniNotifyBorder", { ctermfg = colors.br_black })
hi("MiniNotifyNormal", { ctermfg = colors.white, ctermbg = colors.br_black })
hi("MiniNotifyTitle", { ctermfg = colors.red, cterm = "bold" })

-- Mini.starter (dashboard) - commonly used
hi("MiniStarterCurrent", { ctermfg = colors.red, cterm = "bold" })
hi("MiniStarterHeader", { ctermfg = colors.red, cterm = "bold" })
hi("MiniStarterItem", { ctermfg = colors.white })
hi("MiniStarterSection", { ctermfg = colors.yellow, cterm = "bold" })

-- Mini.statusline - commonly used
hi("MiniStatuslineDevinfo", { ctermfg = colors.br_black, ctermbg = colors.br_black })
hi("MiniStatuslineFileinfo", { ctermfg = colors.white, ctermbg = colors.br_black })
hi("MiniStatuslineFilename", { ctermfg = colors.red, ctermbg = colors.br_black })
hi("MiniStatuslineInactive", { ctermfg = colors.br_black, ctermbg = colors.br_black })
hi("MiniStatuslineModeCommand", { ctermfg = colors.black, ctermbg = colors.br_yellow, cterm = "bold" })
hi("MiniStatuslineModeInsert", { ctermfg = colors.black, ctermbg = colors.green, cterm = "bold" })
hi("MiniStatuslineModeNormal", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })
hi("MiniStatuslineModeVisual", { ctermfg = colors.black, ctermbg = colors.yellow, cterm = "bold" })

-- Mini.surround - commonly used
hi("MiniSurroundInput", { ctermfg = colors.black, ctermbg = colors.cyan })

-- Mini.trailspace - commonly used
hi("MiniTrailspace", { ctermfg = colors.br_red, ctermbg = colors.black })
end

return M
