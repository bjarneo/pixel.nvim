-- LSP support for Pixel colorscheme
-- This module provides LSP-related highlight groups

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
  -- Get config from main module
  local config = require("pixel").config or {}
  local italic = config.disable_italics and "NONE" or "italic"

  -- LSP semantic tokens
  hi("@lsp.type.class", { ctermfg = colors.yellow })
  hi("@lsp.type.comment", { ctermfg = colors.br_black })
  hi("@lsp.type.decorator", { ctermfg = colors.blue })
  hi("@lsp.type.enum", { ctermfg = colors.yellow })
  hi("@lsp.type.enumMember", { ctermfg = colors.magenta })
  hi("@lsp.type.event", { ctermfg = colors.red })
  hi("@lsp.type.function", { ctermfg = colors.red })
  hi("@lsp.type.interface", { ctermfg = colors.yellow })
  hi("@lsp.type.keyword", { ctermfg = colors.blue })
  hi("@lsp.type.macro", { ctermfg = colors.blue })
  hi("@lsp.type.method", { ctermfg = colors.red })
  hi("@lsp.type.modifier", { ctermfg = colors.blue })
  hi("@lsp.type.namespace", { ctermfg = colors.yellow })
  hi("@lsp.type.number", { ctermfg = colors.cyan })
  hi("@lsp.type.operator", { ctermfg = colors.white })
  hi("@lsp.type.parameter", { ctermfg = colors.white })
  hi("@lsp.type.property", { ctermfg = colors.cyan })
  hi("@lsp.type.regexp", { ctermfg = colors.green })
  hi("@lsp.type.string", { ctermfg = colors.green })
  hi("@lsp.type.struct", { ctermfg = colors.yellow })
  hi("@lsp.type.type", { ctermfg = colors.yellow })
  hi("@lsp.type.typeParameter", { ctermfg = colors.yellow })
  hi("@lsp.type.variable", { ctermfg = colors.white })

  -- Diagnostic highlights
  hi("DiagnosticError", { ctermfg = colors.br_red })
  hi("DiagnosticWarn", { ctermfg = colors.br_yellow })
  hi("DiagnosticInfo", { ctermfg = colors.br_blue })
  hi("DiagnosticHint", { ctermfg = colors.br_cyan })
  hi("DiagnosticOk", { ctermfg = colors.green })

  -- Diagnostic virtual text
  hi("DiagnosticVirtualTextError", { ctermfg = colors.br_red, ctermbg = colors.black })
  hi("DiagnosticVirtualTextWarn", { ctermfg = colors.br_yellow, ctermbg = colors.black })
  hi("DiagnosticVirtualTextInfo", { ctermfg = colors.br_blue, ctermbg = colors.black })
  hi("DiagnosticVirtualTextHint", { ctermfg = colors.br_cyan, ctermbg = colors.black })
  hi("DiagnosticVirtualTextOk", { ctermfg = colors.green, ctermbg = colors.black })

  -- Diagnostic underlines
  hi("DiagnosticUnderlineError", { ctermfg = colors.br_red, cterm = "underline" })
  hi("DiagnosticUnderlineWarn", { ctermfg = colors.br_yellow, cterm = "underline" })
  hi("DiagnosticUnderlineInfo", { ctermfg = colors.br_blue, cterm = "underline" })
  hi("DiagnosticUnderlineHint", { ctermfg = colors.br_cyan, cterm = "underline" })
  hi("DiagnosticUnderlineOk", { ctermfg = colors.green, cterm = "underline" })

  -- Diagnostic signs
  hi("DiagnosticSignError", { ctermfg = colors.br_red, ctermbg = colors.black })
  hi("DiagnosticSignWarn", { ctermfg = colors.br_yellow, ctermbg = colors.black })
  hi("DiagnosticSignInfo", { ctermfg = colors.br_blue, ctermbg = colors.black })
  hi("DiagnosticSignHint", { ctermfg = colors.br_cyan, ctermbg = colors.black })
  hi("DiagnosticSignOk", { ctermfg = colors.green, ctermbg = colors.black })

  -- Floating window highlights
  hi("DiagnosticFloatingError", { ctermfg = colors.br_red, ctermbg = colors.black })
  hi("DiagnosticFloatingWarn", { ctermfg = colors.br_yellow, ctermbg = colors.black })
  hi("DiagnosticFloatingInfo", { ctermfg = colors.br_blue, ctermbg = colors.black })
  hi("DiagnosticFloatingHint", { ctermfg = colors.br_cyan, ctermbg = colors.black })
  hi("DiagnosticFloatingOk", { ctermfg = colors.green, ctermbg = colors.black })

  -- LSP references
  hi("LspReferenceText", { ctermbg = colors.br_black })
  hi("LspReferenceRead", { ctermbg = colors.br_black })
  hi("LspReferenceWrite", { ctermbg = colors.br_black })

  -- LSP signature help
  hi("LspSignatureActiveParameter", { ctermfg = colors.br_green, cterm = "bold" })

  -- LSP code lens
  hi("LspCodeLens", { ctermfg = colors.br_black, cterm = italic })
  hi("LspCodeLensSeparator", { ctermfg = colors.br_black })

  -- LSP inlay hints
  hi("LspInlayHint", { ctermfg = colors.br_black, ctermbg = colors.black, cterm = italic })
end

return M
