-- Treesitter support for Pixel colorscheme
-- This module provides Treesitter-related highlight groups

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
  -- Get config from main module
  local config = require("pixel").config or {}
  local italic = config.disable_italics and "NONE" or "italic"

  -- Treesitter highlights
  hi("@annotation", { ctermfg = colors.blue })
  hi("@attribute", { ctermfg = colors.blue })
  hi("@boolean", { ctermfg = colors.red })
  hi("@character", { ctermfg = colors.green })
  hi("@character.special", { ctermfg = colors.br_green })

  -- Comments
  hi("@comment", { ctermfg = colors.br_black, cterm = italic })
  hi("@comment.documentation", { ctermfg = colors.br_black, cterm = italic })

  -- Control flow
  hi("@conditional", { ctermfg = colors.blue, cterm = "bold" })
  hi("@repeat", { ctermfg = colors.blue, cterm = "bold" })
  hi("@exception", { ctermfg = colors.blue })
  hi("@keyword", { ctermfg = colors.blue })
  hi("@keyword.function", { ctermfg = colors.blue })
  hi("@keyword.operator", { ctermfg = colors.blue })
  hi("@keyword.return", { ctermfg = colors.blue })

  -- Constants and variables
  hi("@constant", { ctermfg = colors.magenta })
  hi("@constant.builtin", { ctermfg = colors.magenta })
  hi("@constant.macro", { ctermfg = colors.magenta })
  hi("@variable", { ctermfg = colors.white })
  hi("@variable.builtin", { ctermfg = colors.yellow })
  hi("@parameter", { ctermfg = colors.white })
  hi("@parameter.reference", { ctermfg = colors.white })

  -- Functions and methods
  hi("@function", { ctermfg = colors.red })
  hi("@function.builtin", { ctermfg = colors.red, cterm = "bold" })
  hi("@function.call", { ctermfg = colors.red })
  hi("@function.macro", { ctermfg = colors.red, cterm = "bold" })
  hi("@method", { ctermfg = colors.red })
  hi("@method.call", { ctermfg = colors.red })
  hi("@constructor", { ctermfg = colors.yellow })

  -- Types and structures
  hi("@type", { ctermfg = colors.yellow })
  hi("@type.builtin", { ctermfg = colors.yellow })
  hi("@type.definition", { ctermfg = colors.yellow })
  hi("@type.qualifier", { ctermfg = colors.blue })
  hi("@namespace", { ctermfg = colors.yellow })
  hi("@storageclass", { ctermfg = colors.blue })

  -- Properties and fields
  hi("@property", { ctermfg = colors.cyan })
  hi("@field", { ctermfg = colors.cyan })

  -- Strings and numbers
  hi("@string", { ctermfg = colors.green })
  hi("@string.escape", { ctermfg = colors.br_green, cterm = "bold" })
  hi("@string.regex", { ctermfg = colors.green })
  hi("@string.special", { ctermfg = colors.br_green })
  hi("@number", { ctermfg = colors.cyan })
  hi("@float", { ctermfg = colors.cyan })

  -- Operators and punctuation
  hi("@operator", { ctermfg = colors.white })
  hi("@punctuation.bracket", { ctermfg = colors.white })
  hi("@punctuation.delimiter", { ctermfg = colors.white })
  hi("@punctuation.special", { ctermfg = colors.br_green })

  -- Special elements
  hi("@symbol", { ctermfg = colors.magenta })
  hi("@label", { ctermfg = colors.yellow })
  hi("@include", { ctermfg = colors.blue, cterm = italic })
  hi("@define", { ctermfg = colors.blue })
  hi("@debug", { ctermfg = colors.br_red })
  hi("@error", { ctermfg = colors.br_red })

  -- Tags (HTML/XML)
  hi("@tag", { ctermfg = colors.blue })
  hi("@tag.attribute", { ctermfg = colors.cyan })
  hi("@tag.delimiter", { ctermfg = colors.white })

  -- Text elements (Markdown, etc.)
  hi("@text", { ctermfg = colors.white })
  hi("@text.strong", { ctermfg = colors.white, cterm = "bold" })
  hi("@text.emphasis", { ctermfg = colors.white, cterm = italic })
  hi("@text.underline", { ctermfg = colors.white, cterm = "underline" })
  hi("@text.strike", { ctermfg = colors.white, cterm = "strikethrough" })
  hi("@text.title", { ctermfg = colors.blue, cterm = "bold" })
  hi("@text.literal", { ctermfg = colors.green })
  hi("@text.uri", { ctermfg = colors.br_green, cterm = "underline" })
  hi("@text.math", { ctermfg = colors.cyan })
  hi("@text.environment", { ctermfg = colors.blue })
  hi("@text.environment.name", { ctermfg = colors.yellow })
  hi("@text.reference", { ctermfg = colors.cyan })
  hi("@text.todo", { ctermfg = colors.br_black, cterm = "bold" })
  hi("@text.note", { ctermfg = colors.br_blue, cterm = "bold" })
  hi("@text.warning", { ctermfg = colors.br_yellow, cterm = "bold" })
  hi("@text.danger", { ctermfg = colors.br_red, cterm = "bold" })

  -- Language-specific highlights
  hi("@variable.builtin.vim", { ctermfg = colors.yellow })
  hi("@function.builtin.vim", { ctermfg = colors.red })

  -- HTML
  hi("@tag.html", { ctermfg = colors.blue })
  hi("@tag.delimiter.html", { ctermfg = colors.white })
  hi("@tag.attribute.html", { ctermfg = colors.cyan })

  -- CSS
  hi("@property.css", { ctermfg = colors.cyan })
  hi("@type.css", { ctermfg = colors.blue })
  hi("@string.css", { ctermfg = colors.green })
  hi("@number.css", { ctermfg = colors.cyan })

  -- JavaScript/TypeScript
  hi("@constructor.javascript", { ctermfg = colors.yellow })
  hi("@constructor.typescript", { ctermfg = colors.yellow })
  hi("@variable.builtin.javascript", { ctermfg = colors.yellow })
  hi("@variable.builtin.typescript", { ctermfg = colors.yellow })
end

return M
