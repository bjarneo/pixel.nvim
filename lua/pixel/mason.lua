-- Mason.nvim highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
	local config = require("pixel").config or {}
	local italic = config.disable_italics and "NONE" or "italic"

	-- Mason window
	hi("MasonNormal", { ctermfg = colors.white, ctermbg = colors.black })
	hi("MasonHeader", { ctermfg = colors.red, ctermbg = colors.br_black, cterm = "bold" })
	hi("MasonHeaderSecondary", { ctermfg = colors.cyan, ctermbg = colors.br_black, cterm = "bold" })

	-- Mason highlight groups
	hi("MasonHighlight", { ctermfg = colors.red })
	hi("MasonHighlightBlock", { ctermfg = colors.black, ctermbg = colors.red })
	hi("MasonHighlightBlockBold", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })
	hi("MasonHighlightSecondary", { ctermfg = colors.cyan })
	hi("MasonHighlightBlockSecondary", { ctermfg = colors.black, ctermbg = colors.cyan })
	hi("MasonHighlightBlockBoldSecondary", { ctermfg = colors.black, ctermbg = colors.cyan, cterm = "bold" })

	-- Mason muteds
	hi("MasonMuted", { ctermfg = colors.br_black })
	hi("MasonMutedBlock", { ctermfg = colors.br_black, ctermbg = colors.br_black })
	hi("MasonMutedBlockBold", { ctermfg = colors.br_black, ctermbg = colors.br_black, cterm = "bold" })

	-- Mason links
	hi("MasonLink", { ctermfg = colors.br_blue, cterm = "underline" })

	-- Mason error
	hi("MasonError", { ctermfg = colors.br_red })

	-- Mason warning
	hi("MasonWarning", { ctermfg = colors.br_yellow })

	-- Mason info
	hi("MasonInfo", { ctermfg = colors.br_blue })

	-- Mason hint
	hi("MasonHint", { ctermfg = colors.br_cyan })

	-- Mason progress
	hi("MasonProgress", { ctermfg = colors.red })

	-- Mason directory/file
	hi("MasonDir", { ctermfg = colors.yellow })
	hi("MasonFile", { ctermfg = colors.green })

	-- Mason package states
	hi("MasonPackageInstalled", { ctermfg = colors.br_blue })
	hi("MasonPackagePending", { ctermfg = colors.br_yellow })
	hi("MasonPackageOutdated", { ctermfg = colors.br_black })
	hi("MasonPackageUninstalled", { ctermfg = colors.br_red })

	-- Mason heading
	hi("MasonHeading", { ctermfg = colors.red, cterm = "bold" })

	-- Mason button
	hi("MasonButton", { ctermfg = colors.black, ctermbg = colors.red })
	hi("MasonButtonSecondary", { ctermfg = colors.black, ctermbg = colors.cyan })

	-- Mason log
	hi("MasonLogInfo", { ctermfg = colors.br_blue })
	hi("MasonLogWarn", { ctermfg = colors.br_yellow })
	hi("MasonLogError", { ctermfg = colors.br_red })
	hi("MasonLogDebug", { ctermfg = colors.br_black })
	hi("MasonLogTrace", { ctermfg = colors.br_black })

	-- Mason install/uninstall
	hi("MasonInstallSuccess", { ctermfg = colors.br_blue })
	hi("MasonInstallFailed", { ctermfg = colors.br_red })
	hi("MasonInstallPending", { ctermfg = colors.br_yellow })
	hi("MasonUninstallSuccess", { ctermfg = colors.br_blue })
	hi("MasonUninstallFailed", { ctermfg = colors.br_red })
	hi("MasonUninstallPending", { ctermfg = colors.br_yellow })

	-- Mason update
	hi("MasonUpdateSuccess", { ctermfg = colors.br_blue })
	hi("MasonUpdateFailed", { ctermfg = colors.br_red })
	hi("MasonUpdatePending", { ctermfg = colors.br_yellow })

	-- Mason source
	hi("MasonSource", { ctermfg = colors.br_black })

	-- Mason version
	hi("MasonVersion", { ctermfg = colors.cyan })

	-- Mason language
	hi("MasonLanguage", { ctermfg = colors.yellow })

	-- Mason category
	hi("MasonCategory", { ctermfg = colors.blue })

	-- Mason description
	hi("MasonDescription", { ctermfg = colors.br_black, cterm = italic })

	-- Mason homepage
	hi("MasonHomepage", { ctermfg = colors.br_blue, cterm = "underline" })

	-- Mason license
	hi("MasonLicense", { ctermfg = colors.br_black })

	-- Mason size
	hi("MasonSize", { ctermfg = colors.cyan })

	-- Mason date
	hi("MasonDate", { ctermfg = colors.br_black })

	-- Mason count
	hi("MasonCount", { ctermfg = colors.cyan, cterm = "bold" })

	-- Mason separator
	hi("MasonSeparator", { ctermfg = colors.br_black })

	-- Mason spinner
	hi("MasonSpinner", { ctermfg = colors.red })

	-- Mason checkmark
	hi("MasonCheckmark", { ctermfg = colors.br_blue })

	-- Mason cross
	hi("MasonCross", { ctermfg = colors.br_red })

	-- Mason dash
	hi("MasonDash", { ctermfg = colors.br_black })

	-- Mason arrow
	hi("MasonArrow", { ctermfg = colors.red })

	-- Mason border
	hi("MasonBorder", { ctermfg = colors.br_black })

	-- Mason title
	hi("MasonTitle", { ctermfg = colors.red, cterm = "bold" })

	-- Mason subtitle
	hi("MasonSubtitle", { ctermfg = colors.cyan })

	-- Mason text
	hi("MasonText", { ctermfg = colors.white })

	-- Mason help
	hi("MasonHelp", { ctermfg = colors.br_black, cterm = italic })

	-- Mason toggle
	hi("MasonToggle", { ctermfg = colors.blue })

	-- Mason filter
	hi("MasonFilter", { ctermfg = colors.red })

	-- Mason search
	hi("MasonSearch", { ctermfg = colors.black, ctermbg = colors.yellow })

	-- Mason match
	hi("MasonMatch", { ctermfg = colors.red, cterm = "bold" })

	-- Mason prompt
	hi("MasonPrompt", { ctermfg = colors.blue, cterm = "bold" })

	-- Mason cursor
	hi("MasonCursor", { ctermfg = colors.black, ctermbg = colors.white })

	-- Mason virtual text
	hi("MasonVirtualText", { ctermfg = colors.br_black, cterm = italic })
end

return M
