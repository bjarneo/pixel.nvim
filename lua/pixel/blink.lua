-- Blink.cmp highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

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

-- Blink signature help
hi("BlinkCmpSignature", { ctermfg = colors.white, ctermbg = colors.br_black })
hi("BlinkCmpSignatureBorder", { ctermfg = colors.br_black, ctermbg = colors.br_black })
hi("BlinkCmpSignatureActiveParameter", { ctermfg = colors.red, ctermbg = colors.br_black })

-- Blink scrollbar
hi("BlinkCmpScrollbar", { ctermfg = colors.br_black, ctermbg = colors.br_black })
hi("BlinkCmpScrollbarThumb", { ctermfg = colors.white, ctermbg = colors.br_black })

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
