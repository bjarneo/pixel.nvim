-- nvim-lint highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors, config)
	-- Lint signs
	hi("LintError", { ctermfg = colors.br_red })
	hi("LintWarning", { ctermfg = colors.br_yellow })
	hi("LintInfo", { ctermfg = colors.br_blue })
	hi("LintHint", { ctermfg = colors.br_cyan })
	hi("LintSignError", { ctermfg = colors.br_red })
	hi("LintSignWarning", { ctermfg = colors.br_yellow })
	hi("LintSignInfo", { ctermfg = colors.br_blue })
	hi("LintSignHint", { ctermfg = colors.br_cyan })

	-- Lint virtual text
	hi("LintVirtualTextError", { ctermfg = colors.br_red, cterm = "italic" })
	hi("LintVirtualTextWarning", { ctermfg = colors.br_yellow, cterm = "italic" })
	hi("LintVirtualTextInfo", { ctermfg = colors.br_blue, cterm = "italic" })
	hi("LintVirtualTextHint", { ctermfg = colors.br_cyan, cterm = "italic" })

	-- Lint underline
	hi("LintUnderlineError", { ctermfg = colors.br_red, cterm = "underline" })
	hi("LintUnderlineWarning", { ctermfg = colors.br_yellow, cterm = "underline" })
	hi("LintUnderlineInfo", { ctermfg = colors.br_blue, cterm = "underline" })
	hi("LintUnderlineHint", { ctermfg = colors.br_cyan, cterm = "underline" })

	-- Lint floating window
	hi("LintFloatBorder", { ctermfg = colors.br_black })
	hi("LintFloatTitle", { ctermfg = colors.red, cterm = "bold" })
	hi("LintFloatError", { ctermfg = colors.br_red })
	hi("LintFloatWarning", { ctermfg = colors.br_yellow })
	hi("LintFloatInfo", { ctermfg = colors.br_blue })
	hi("LintFloatHint", { ctermfg = colors.br_cyan })
end

return M
