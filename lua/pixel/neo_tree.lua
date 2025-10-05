-- Neo-tree support for Pixel colorscheme
-- This module provides Neo-tree highlight groups

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
	-- Neo-tree highlight groups
	hi("NeoTreeDirectoryName", { ctermfg = colors.blue })
	hi("NeoTreeDirectoryIcon", { ctermfg = colors.blue })
	hi("NeoTreeFileName", { ctermfg = colors.white })
	hi("NeoTreeFileIcon", { ctermfg = colors.cyan })
	hi("NeoTreeModified", { ctermfg = colors.yellow })
	hi("NeoTreeGitAdded", { ctermfg = colors.green })
	hi("NeoTreeGitDeleted", { ctermfg = colors.red })
	hi("NeoTreeGitModified", { ctermfg = colors.yellow })
	hi("NeoTreeGitUntracked", { ctermfg = colors.br_red })

	-- Neo-tree selection and cursor
	hi("NeoTreeCursorLine", { ctermbg = colors.br_black })
	hi("NeoTreeSelected", { ctermfg = colors.white, ctermbg = colors.blue })
	hi("NeoTreeSelectedFile", { ctermfg = colors.white, ctermbg = colors.blue })
	hi("NeoTreeSelectedDirectory", { ctermfg = colors.white, ctermbg = colors.blue })

	-- Neo-tree window and borders
	hi("NeoTreeNormal", { ctermfg = colors.white })
	hi("NeoTreeNormalNC", { ctermfg = colors.white })
	hi("NeoTreeVertSplit", { ctermfg = colors.br_black })
	hi("NeoTreeWinSeparator", { ctermfg = colors.br_black })
end

return M
