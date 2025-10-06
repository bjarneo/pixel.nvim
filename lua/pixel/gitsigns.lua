-- GitSigns highlights for Pixel colorscheme
local M = {}

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

function M.setup(colors)
	local config = require("pixel").config or {}
	local italic = config.disable_italics and "NONE" or "italic"

	-- GitSigns basic signs
	hi("GitSignsAdd", { ctermfg = colors.green })
	hi("GitSignsChange", { ctermfg = colors.yellow })
	hi("GitSignsDelete", { ctermfg = colors.red })
	hi("GitSignsTopdelete", { ctermfg = colors.red })
	hi("GitSignsChangedelete", { ctermfg = colors.yellow })
	hi("GitSignsUntracked", { ctermfg = colors.green })

	-- GitSigns line highlights
	hi("GitSignsAddLn", { ctermfg = colors.green })
	hi("GitSignsChangeLn", { ctermfg = colors.yellow })
	hi("GitSignsDeleteLn", { ctermfg = colors.red })
	hi("GitSignsTopdeleteN", { ctermfg = colors.red })
	hi("GitSignsChangedeleteLn", { ctermfg = colors.yellow })
	hi("GitSignsUntrackedLn", { ctermfg = colors.green })

	-- GitSigns number highlights
	hi("GitSignsAddNr", { ctermfg = colors.green })
	hi("GitSignsChangeNr", { ctermfg = colors.yellow })
	hi("GitSignsDeleteNr", { ctermfg = colors.red })
	hi("GitSignsTopdeleteNr", { ctermfg = colors.red })
	hi("GitSignsChangedeleteNr", { ctermfg = colors.yellow })
	hi("GitSignsUntrackedNr", { ctermfg = colors.green })

	-- GitSigns preview
	hi("GitSignsAddPreview", { ctermfg = colors.green, ctermbg = colors.black })
	hi("GitSignsDeletePreview", { ctermfg = colors.red, ctermbg = colors.black })
	hi("GitSignsChangePreview", { ctermfg = colors.yellow, ctermbg = colors.black })

	-- GitSigns current line blame
	hi("GitSignsCurrentLineBlame", { ctermfg = colors.br_black, ctermbg = colors.black, cterm = italic })

	-- GitSigns word diff
	hi("GitSignsAddWord", { ctermfg = colors.black, ctermbg = colors.green })
	hi("GitSignsChangeWord", { ctermfg = colors.black, ctermbg = colors.yellow })
	hi("GitSignsDeleteWord", { ctermfg = colors.black, ctermbg = colors.red })

	-- GitSigns virtual text
	hi("GitSignsAddVirtLn", { ctermfg = colors.green })
	hi("GitSignsChangeVirtLn", { ctermfg = colors.yellow })
	hi("GitSignsDeleteVirtLn", { ctermfg = colors.red })

	-- GitSigns inline highlights
	hi("GitSignsAddInline", { ctermfg = colors.black, ctermbg = colors.green })
	hi("GitSignsChangeInline", { ctermfg = colors.black, ctermbg = colors.yellow })
	hi("GitSignsDeleteInline", { ctermfg = colors.black, ctermbg = colors.red })

	-- GitSigns staging area
	hi("GitSignsAddStaged", { ctermfg = colors.green, ctermbg = colors.black })
	hi("GitSignsChangeStaged", { ctermfg = colors.yellow, ctermbg = colors.black })
	hi("GitSignsDeleteStaged", { ctermfg = colors.red, ctermbg = colors.black })

	-- GitSigns diff
	hi("GitSignsDiffAdd", { ctermfg = colors.green })
	hi("GitSignsDiffChange", { ctermfg = colors.yellow })
	hi("GitSignsDiffDelete", { ctermfg = colors.red })
	hi("GitSignsDiffText", { ctermfg = colors.yellow, ctermbg = colors.black })

	-- GitSigns blame
	hi("GitSignsBlame", { ctermfg = colors.br_black, cterm = italic })
	hi("GitSignsBlameHash", { ctermfg = colors.br_black })
	hi("GitSignsBlameAuthor", { ctermfg = colors.cyan })
	hi("GitSignsBlameDate", { ctermfg = colors.br_black })
	hi("GitSignsBlameSummary", { ctermfg = colors.white })

	-- GitSigns merge conflicts
	hi("GitSignsConflictOurs", { ctermfg = colors.br_blue })
	hi("GitSignsConflictTheirs", { ctermfg = colors.red })
	hi("GitSignsConflictAncestor", { ctermfg = colors.br_yellow })
end

return M
