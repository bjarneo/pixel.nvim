-- NvimTree highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
	-- Get config from main module
	local config = require("pixel").config or {}
	local italic = config.disable_italics and "NONE" or "italic"

	-- NvimTree general
	hi("NvimTreeNormal", { ctermfg = colors.white })
	hi("NvimTreeNormalFloat", { ctermfg = colors.white })
	hi("NvimTreeNormalNC", { ctermfg = colors.white })
	hi("NvimTreeVertSplit", { ctermfg = colors.br_black })
	hi("NvimTreeWinSeparator", { ctermfg = colors.br_black })
	hi("NvimTreeEndOfBuffer", { ctermfg = colors.black })
	hi("NvimTreeCursorLine", { ctermbg = colors.br_black })
	hi("NvimTreeCursorColumn", { ctermbg = colors.br_black })
	hi("NvimTreeStatusLine", { ctermfg = colors.black })
	hi("NvimTreeStatusLineNC", { ctermfg = colors.black })

	-- NvimTree folders
	hi("NvimTreeFolderName", { ctermfg = colors.br_blue })
	hi("NvimTreeFolderIcon", { ctermfg = colors.br_blue })
	hi("NvimTreeOpenedFolderName", { ctermfg = colors.br_blue, cterm = "bold" })
	hi("NvimTreeClosedFolderIcon", { ctermfg = colors.br_blue })
	hi("NvimTreeOpenedFolderIcon", { ctermfg = colors.br_blue })
	hi("NvimTreeEmptyFolderName", { ctermfg = colors.br_black })
	hi("NvimTreeSymlinkFolderName", { ctermfg = colors.br_green })

	-- NvimTree files
	hi("NvimTreeFileName", { ctermfg = colors.white })
	hi("NvimTreeFileIcon", { ctermfg = colors.white })
	hi("NvimTreeExecFile", { ctermfg = colors.green, cterm = "bold" })
	hi("NvimTreeOpenedFile", { ctermfg = colors.white, cterm = italic })
	hi("NvimTreeModifiedFile", { ctermfg = colors.yellow, cterm = italic })
	hi("NvimTreeSpecialFile", { ctermfg = colors.br_green, cterm = "bold" })
	hi("NvimTreeImageFile", { ctermfg = colors.red })
	hi("NvimTreeMarkdownFile", { ctermfg = colors.br_blue })
	hi("NvimTreeSymlink", { ctermfg = colors.br_green })

	-- NvimTree root
	hi("NvimTreeRootFolder", { ctermfg = colors.blue, cterm = "bold" })

	-- NvimTree indent
	hi("NvimTreeIndentMarker", { ctermfg = colors.br_black })
	hi("NvimTreeLiveFilterPrefix", { ctermfg = colors.br_green, cterm = "bold" })
	hi("NvimTreeLiveFilterValue", { ctermfg = colors.green, cterm = "bold" })

	-- NvimTree git integration
	hi("NvimTreeGitDirty", { ctermfg = colors.yellow })
	hi("NvimTreeGitStaged", { ctermfg = colors.green })
	hi("NvimTreeGitMerge", { ctermfg = colors.br_yellow })
	hi("NvimTreeGitRenamed", { ctermfg = colors.yellow })
	hi("NvimTreeGitNew", { ctermfg = colors.green })
	hi("NvimTreeGitDeleted", { ctermfg = colors.red })
	hi("NvimTreeGitIgnored", { ctermfg = colors.br_black })

	-- NvimTree file status
	hi("NvimTreeFileRenamed", { ctermfg = colors.yellow })
	hi("NvimTreeFileStaged", { ctermfg = colors.green })
	hi("NvimTreeFileNew", { ctermfg = colors.green })
	hi("NvimTreeFileDeleted", { ctermfg = colors.red })
	hi("NvimTreeFileDirty", { ctermfg = colors.yellow })
	hi("NvimTreeFileIgnored", { ctermfg = colors.br_black })
	hi("NvimTreeFileMerge", { ctermfg = colors.br_yellow })

	-- NvimTree diagnostics
	hi("NvimTreeLspDiagnosticsError", { ctermfg = colors.br_red })
	hi("NvimTreeLspDiagnosticsWarning", { ctermfg = colors.br_yellow })
	hi("NvimTreeLspDiagnosticsInformation", { ctermfg = colors.br_blue })
	hi("NvimTreeLspDiagnosticsHint", { ctermfg = colors.br_cyan })

	-- NvimTree bookmarks
	hi("NvimTreeBookmark", { ctermfg = colors.br_green, cterm = "bold" })
	hi("NvimTreeBookmarkHL", { ctermfg = colors.br_green, ctermbg = colors.br_black })

	-- NvimTree window picker
	hi("NvimTreeWindowPicker", { ctermfg = colors.black, ctermbg = colors.br_green, cterm = "bold" })

	-- NvimTree popup
	hi("NvimTreePopup", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("NvimTreePopupBorder", { ctermfg = colors.br_black, ctermbg = colors.br_black })

	-- NvimTree copy/cut
	hi("NvimTreeCopiedHL", { ctermfg = colors.green, ctermbg = colors.br_black })
	hi("NvimTreeCutHL", { ctermfg = colors.red, ctermbg = colors.br_black })
end

return M
