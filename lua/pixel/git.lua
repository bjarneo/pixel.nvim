-- Git support for Pixel colorscheme
-- This module provides Git-related highlight groups

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

  -- Git gutter highlight groups
  hi("GitGutterAdd", { ctermfg = colors.green })
  hi("GitGutterChange", { ctermfg = colors.yellow })
  hi("GitGutterDelete", { ctermfg = colors.red })
  hi("GitGutterChangeDelete", { ctermfg = colors.magenta })
end

return M