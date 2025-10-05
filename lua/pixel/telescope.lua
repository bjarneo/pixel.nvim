-- Telescope support for Pixel colorscheme
-- This module provides Telescope-related highlight groups

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
  -- Telescope general
  hi("TelescopeSelection", { ctermfg = colors.white, ctermbg = colors.br_black })
  hi("TelescopeSelectionCaret", { ctermfg = colors.white, ctermbg = colors.br_black })
  hi("TelescopeMultiSelection", { ctermfg = colors.white, ctermbg = colors.br_black })
  hi("TelescopeNormal", { ctermfg = colors.white, ctermbg = colors.black })
  hi("TelescopeBorder", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("TelescopeMatching", { ctermfg = colors.br_green, cterm = "bold" })

  -- Telescope prompt
  hi("TelescopePromptNormal", { ctermfg = colors.white, ctermbg = colors.black })
  hi("TelescopePromptBorder", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("TelescopePromptTitle", { ctermfg = colors.blue, cterm = "bold" })
  hi("TelescopePromptPrefix", { ctermfg = colors.white })
  hi("TelescopePromptCounter", { ctermfg = colors.br_black })

  -- Telescope preview
  hi("TelescopePreviewNormal", { ctermfg = colors.white, ctermbg = colors.black })
  hi("TelescopePreviewBorder", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("TelescopePreviewTitle", { ctermfg = colors.br_blue, cterm = "bold" })
  hi("TelescopePreviewLine", { ctermbg = colors.br_black })
  hi("TelescopePreviewMatch", { ctermfg = colors.br_green, ctermbg = colors.br_black })

  -- Telescope results
  hi("TelescopeResultsNormal", { ctermfg = colors.white, ctermbg = colors.black })
  hi("TelescopeResultsBorder", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("TelescopeResultsTitle", { ctermfg = colors.red, cterm = "bold" })
  hi("TelescopeResultsLineNr", { ctermfg = colors.br_black })
  hi("TelescopeResultsIdent", { ctermfg = colors.br_black })
  hi("TelescopeResultsClass", { ctermfg = colors.yellow })
  hi("TelescopeResultsConstant", { ctermfg = colors.magenta })
  hi("TelescopeResultsField", { ctermfg = colors.cyan })
  hi("TelescopeResultsFunction", { ctermfg = colors.red })
  hi("TelescopeResultsMethod", { ctermfg = colors.red })
  hi("TelescopeResultsOperator", { ctermfg = colors.white })
  hi("TelescopeResultsStruct", { ctermfg = colors.yellow })
  hi("TelescopeResultsVariable", { ctermfg = colors.white })
  hi("TelescopeResultsNumber", { ctermfg = colors.cyan })
  hi("TelescopeResultsString", { ctermfg = colors.green })
  hi("TelescopeResultsBoolean", { ctermfg = colors.red })
  hi("TelescopeResultsComment", { ctermfg = colors.br_black })
  hi("TelescopeResultsSpecialComment", { ctermfg = colors.br_black })
  hi("TelescopeResultsDiffAdd", { ctermfg = colors.green })
  hi("TelescopeResultsDiffChange", { ctermfg = colors.yellow })
  hi("TelescopeResultsDiffDelete", { ctermfg = colors.red })
  hi("TelescopeResultsDiffUntracked", { ctermfg = colors.green })

  -- Telescope file browser
  hi("TelescopeResultsFileIcon", { ctermfg = colors.br_blue })
  hi("TelescopeResultsDirectory", { ctermfg = colors.br_blue, cterm = "bold" })

  -- Telescope path display
  hi("TelescopePathSeparator", { ctermfg = colors.br_black })

  -- Telescope extensions
  hi("TelescopeUnicodeIcon", { ctermfg = colors.br_green })
  hi("TelescopeResultsIdentifier", { ctermfg = colors.white })

  -- Telescope git
  hi("TelescopeResultsGitStatus", { ctermfg = colors.yellow })
  hi("TelescopeResultsGitHash", { ctermfg = colors.br_black })
  hi("TelescopeResultsGitBranch", { ctermfg = colors.green })
  hi("TelescopeResultsGitCommit", { ctermfg = colors.white })
  hi("TelescopeResultsGitUser", { ctermfg = colors.cyan })
  hi("TelescopeResultsGitDate", { ctermfg = colors.br_black })
end

return M
