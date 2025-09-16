-- Treesitter support for Pixel colorscheme
-- This module provides Treesitter highlight groups

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

  -- LSP semantic highlighting - treesitter
  hi("@variable", { ctermfg = colors.white })
  hi("@variable.builtin", { ctermfg = colors.magenta, cterm = "italic" })
  hi("@variable.parameter", { ctermfg = colors.white, cterm = "italic" })
  hi("@constant", { ctermfg = colors.magenta, cterm = "bold" })
  hi("@constant.builtin", { ctermfg = colors.magenta, cterm = "bold,italic" })
  hi("@constant.macro", { ctermfg = colors.br_magenta, cterm = "bold" })
  hi("@string", { ctermfg = colors.green })
  hi("@string.escape", { ctermfg = colors.br_green, cterm = "bold" })
  hi("@string.special", { ctermfg = colors.cyan })
  hi("@character", { ctermfg = colors.br_green })
  hi("@number", { ctermfg = colors.cyan })
  hi("@boolean", { ctermfg = colors.red, cterm = "bold" })
  hi("@float", { ctermfg = colors.cyan })
  hi("@function", { ctermfg = colors.red, cterm = "bold" })
  hi("@function.builtin", { ctermfg = colors.red, cterm = "bold,italic" })
  hi("@function.macro", { ctermfg = colors.br_red, cterm = "bold" })
  hi("@method", { ctermfg = colors.red })
  hi("@constructor", { ctermfg = colors.yellow, cterm = "bold" })
  hi("@parameter", { ctermfg = colors.white, cterm = "italic" })
  hi("@keyword", { ctermfg = colors.blue, cterm = "bold" })
  hi("@keyword.function", { ctermfg = colors.blue, cterm = "italic" })
  hi("@keyword.operator", { ctermfg = colors.blue })
  hi("@keyword.return", { ctermfg = colors.blue, cterm = "bold" })
  hi("@conditional", { ctermfg = colors.blue })
  hi("@repeat", { ctermfg = colors.blue })
  hi("@label", { ctermfg = colors.blue })
  hi("@operator", { ctermfg = colors.white })
  hi("@exception", { ctermfg = colors.red, cterm = "bold" })
  hi("@type", { ctermfg = colors.yellow, cterm = "bold" })
  hi("@type.builtin", { ctermfg = colors.yellow, cterm = "bold,italic" })
  hi("@type.definition", { ctermfg = colors.yellow })
  hi("@storageclass", { ctermfg = colors.yellow })
  hi("@structure", { ctermfg = colors.yellow })
  hi("@namespace", { ctermfg = colors.yellow, cterm = "italic" })
  hi("@include", { ctermfg = colors.br_magenta, cterm = "bold" })
  hi("@preproc", { ctermfg = colors.br_magenta })
  hi("@debug", { ctermfg = colors.br_red })
  hi("@tag", { ctermfg = colors.red })
  hi("@tag.attribute", { ctermfg = colors.cyan })
  hi("@tag.delimiter", { ctermfg = colors.white })
  hi("@comment", { ctermfg = colors.br_black, cterm = "italic" })
  hi("@comment.documentation", { ctermfg = colors.br_yellow, cterm = "italic" })

  -- Treesitter context
  hi("TreesitterContext", { ctermbg = colors.br_black })
  hi("TreesitterContextLineNumber", { ctermfg = colors.white, cterm = "bold" })
end

return M