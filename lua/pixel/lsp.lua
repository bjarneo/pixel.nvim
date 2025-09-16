-- LSP and diagnostics support for Pixel colorscheme
-- This module provides LSP and diagnostic highlight groups

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

  -- LSP and diagnostic highlight groups
  hi("DiagnosticError", { ctermfg = colors.red })
  hi("DiagnosticWarn", { ctermfg = colors.yellow })
  hi("DiagnosticInfo", { ctermfg = colors.blue })
  hi("DiagnosticHint", { ctermfg = colors.br_black })
  hi("DiagnosticUnderlineError", { cterm = "underline" })
  hi("DiagnosticUnderlineWarn", { cterm = "underline" })
  hi("DiagnosticUnderlineInfo", { cterm = "underline" })
  hi("DiagnosticUnderlineHint", { cterm = "underline" })
end

return M