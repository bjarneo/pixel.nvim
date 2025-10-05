-- Flash.nvim highlights for Pixel colorscheme
local M = {}

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

function M.setup(colors, config)
	-- Flash main highlights
	hi("FlashBackdrop", { ctermfg = colors.br_black })
	hi("FlashLabel", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })
	hi("FlashMatch", { ctermfg = colors.black, ctermbg = colors.yellow })
	hi("FlashCurrent", { ctermfg = colors.black, ctermbg = colors.br_yellow })
	hi("FlashPrompt", { ctermfg = colors.blue, cterm = "bold" })
	hi("FlashPromptIcon", { ctermfg = colors.red })
	hi("FlashCursor", { ctermfg = colors.black, ctermbg = colors.white })

	-- Flash treesitter
	hi("FlashTreachery", { ctermfg = colors.br_red, cterm = "bold" })

	-- Flash leap compatibility
	hi("LeapMatch", { ctermfg = colors.black, ctermbg = colors.yellow })
	hi("LeapLabelPrimary", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })
	hi("LeapLabelSecondary", { ctermfg = colors.black, ctermbg = colors.cyan, cterm = "bold" })
	hi("LeapBackdrop", { ctermfg = colors.br_black })

	-- Flash hop compatibility
	hi("HopNextKey", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })
	hi("HopNextKey1", { ctermfg = colors.black, ctermbg = colors.cyan, cterm = "bold" })
	hi("HopNextKey2", { ctermfg = colors.black, ctermbg = colors.yellow, cterm = "bold" })
	hi("HopUnmatched", { ctermfg = colors.br_black })

	-- Flash lightspeed compatibility
	hi("LightspeedGreyWash", { ctermfg = colors.br_black })
	hi("LightspeedLabel", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })
	hi("LightspeedLabelDistant", { ctermfg = colors.black, ctermbg = colors.cyan, cterm = "bold" })
	hi("LightspeedLabelDistantOverlapped", { ctermfg = colors.black, ctermbg = colors.yellow, cterm = "bold" })
	hi("LightspeedLabelOverlapped", { ctermfg = colors.black, ctermbg = colors.br_yellow, cterm = "bold" })
	hi("LightspeedMaskedChar", { ctermfg = colors.br_black })
	hi("LightspeedOneCharMatch", { ctermfg = colors.black, ctermbg = colors.yellow })
	hi("LightspeedPendingOpArea", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("LightspeedShort", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })
	hi("LightspeedShortCut", { ctermfg = colors.black, ctermbg = colors.cyan, cterm = "bold" })
	hi("LightspeedUniqueChar", { ctermfg = colors.red, cterm = "bold" })
	hi("LightspeedUnlabeledMatch", { ctermfg = colors.black, ctermbg = colors.yellow })

	-- Flash custom modes
	hi("FlashChar", { ctermfg = colors.red, cterm = "bold" })
	hi("FlashWord", { ctermfg = colors.blue, cterm = "bold" })
	hi("FlashLine", { ctermfg = colors.cyan, cterm = "bold" })
	hi("FlashRemote", { ctermfg = colors.yellow, cterm = "bold" })

	-- Flash search
	hi("FlashSearch", { ctermfg = colors.black, ctermbg = colors.yellow })
	hi("FlashSearchMatch", { ctermfg = colors.red, ctermbg = colors.br_black })
	hi("FlashSearchCursor", { ctermfg = colors.black, ctermbg = colors.white })

	-- Flash substitute
	hi("FlashSubstitute", { ctermfg = colors.black, ctermbg = colors.br_yellow })
	hi("FlashSubstituteMatch", { ctermfg = colors.br_yellow, ctermbg = colors.br_black })

	-- Flash yank
	hi("FlashYank", { ctermfg = colors.black, ctermbg = colors.br_blue })
	hi("FlashYankMatch", { ctermfg = colors.br_blue, ctermbg = colors.br_black })

	-- Flash motion
	hi("FlashMotion", { ctermfg = colors.black, ctermbg = colors.cyan })
	hi("FlashMotionMatch", { ctermfg = colors.cyan, ctermbg = colors.br_black })

	-- Flash range
	hi("FlashRange", { ctermfg = colors.black, ctermbg = colors.yellow })
	hi("FlashRangeMatch", { ctermfg = colors.yellow, ctermbg = colors.br_black })

	-- Flash error
	hi("FlashError", { ctermfg = colors.br_red, cterm = "bold" })
	hi("FlashErrorMatch", { ctermfg = colors.br_red, ctermbg = colors.br_black })

	-- Flash warning
	hi("FlashWarning", { ctermfg = colors.br_yellow, cterm = "bold" })
	hi("FlashWarningMatch", { ctermfg = colors.br_yellow, ctermbg = colors.br_black })

	-- Flash info
	hi("FlashInfo", { ctermfg = colors.br_blue, cterm = "bold" })
	hi("FlashInfoMatch", { ctermfg = colors.br_blue, ctermbg = colors.br_black })

	-- Flash hint
	hi("FlashHint", { ctermfg = colors.br_cyan, cterm = "bold" })
	hi("FlashHintMatch", { ctermfg = colors.br_cyan, ctermbg = colors.br_black })
end

return M
