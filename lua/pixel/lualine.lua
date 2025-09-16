-- Lualine support for Pixel colorscheme
-- This module provides Lualine highlight groups

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

  -- Lualine highlight groups
  hi("LualineNormalA", { ctermfg = colors.black, ctermbg = colors.blue, cterm = "bold" })
  hi("LualineNormalB", { ctermfg = colors.white, ctermbg = colors.br_black })
  hi("LualineNormalC", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("LualineInsertA", { ctermfg = colors.black, ctermbg = colors.green, cterm = "bold" })
  hi("LualineInsertB", { ctermfg = colors.white, ctermbg = colors.br_black })
  hi("LualineInsertC", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("LualineVisualA", { ctermfg = colors.black, ctermbg = colors.magenta, cterm = "bold" })
  hi("LualineVisualB", { ctermfg = colors.white, ctermbg = colors.br_black })
  hi("LualineVisualC", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("LualineReplaceA", { ctermfg = colors.black, ctermbg = colors.red, cterm = "bold" })
  hi("LualineReplaceB", { ctermfg = colors.white, ctermbg = colors.br_black })
  hi("LualineReplaceC", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("LualineCommandA", { ctermfg = colors.black, ctermbg = colors.yellow, cterm = "bold" })
  hi("LualineCommandB", { ctermfg = colors.white, ctermbg = colors.br_black })
  hi("LualineCommandC", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("LualineInactiveA", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("LualineInactiveB", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("LualineInactiveC", { ctermfg = colors.br_black, ctermbg = colors.black })
end

return M