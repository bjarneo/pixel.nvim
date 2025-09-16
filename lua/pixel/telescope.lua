-- Telescope support for Pixel colorscheme
-- This module provides Telescope highlight groups

local M = {}

-- Helper function to set highlight groups
local function hi(group, opts)
  local cmd = "highlight " .. group

  if opts.ctermfg then
    cmd = cmd .. " ctermfg=" .. opts.ctermfg
  end

  if opts.ctermbg then
    cmd = cmd .. " ctermbg=" .. opts.ctermbg
  end

  if opts.cterm then
    cmd = cmd .. " cterm=" .. opts.cterm
  end

  vim.cmd(cmd)
end

function M.setup(colors)

  -- Telescope highlight groups
  hi("TelescopeSelection", { ctermfg = colors.white, ctermbg = colors.br_black, cterm = "bold" })
  hi("TelescopeSelectionCaret", { ctermfg = colors.red, cterm = "bold" })
  hi("TelescopeMultiSelection", { ctermfg = colors.green, cterm = "bold" })
  hi("TelescopeNormal", { ctermfg = colors.white })
  hi("TelescopeBorder", { ctermfg = colors.br_black })
  hi("TelescopePromptBorder", { ctermfg = colors.blue })
  hi("TelescopeResultsBorder", { ctermfg = colors.br_black })
  hi("TelescopePreviewBorder", { ctermfg = colors.br_black })
  hi("TelescopeTitle", { ctermfg = colors.white, cterm = "bold" })
  hi("TelescopePromptTitle", { ctermfg = colors.blue, cterm = "bold" })
  hi("TelescopeResultsTitle", { ctermfg = colors.green, cterm = "bold" })
  hi("TelescopePreviewTitle", { ctermfg = colors.cyan, cterm = "bold" })
end

return M