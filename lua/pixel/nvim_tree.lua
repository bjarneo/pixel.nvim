-- NvimTree support for Pixel colorscheme
-- This module provides NvimTree highlight groups

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

  -- NvimTree highlight groups
  hi("NvimTreeFolderName", { ctermfg = colors.blue })
  hi("NvimTreeFolderIcon", { ctermfg = colors.blue })
  hi("NvimTreeOpenedFolderName", { ctermfg = colors.br_blue, cterm = "bold" })
  hi("NvimTreeFileName", { ctermfg = colors.white })
  hi("NvimTreeExecFile", { ctermfg = colors.green, cterm = "bold" })
  hi("NvimTreeSpecialFile", { ctermfg = colors.magenta, cterm = "bold" })
  hi("NvimTreeImageFile", { ctermfg = colors.cyan })
  hi("NvimTreeMarkdownFile", { ctermfg = colors.red })
  hi("NvimTreeIndentMarker", { ctermfg = colors.br_black })
end

return M