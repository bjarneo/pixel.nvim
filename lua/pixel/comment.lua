-- Comment.nvim highlights for Pixel colorscheme
local M = {}

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

function M.setup(colors)
	local config = require("pixel").config or {}
	local italic = config.disable_italics and "NONE" or "italic"

	-- Comment basic
	hi("CommentNormal", { ctermfg = colors.br_black })
	hi("CommentBold", { ctermfg = colors.br_black, cterm = "bold" })
	hi("CommentItalic", { ctermfg = colors.br_black, cterm = italic })
	hi("CommentUnderline", { ctermfg = colors.br_black, cterm = "underline" })
	hi("CommentStrikethrough", { ctermfg = colors.br_black, cterm = "strikethrough" })

	-- Special comment annotations (TODO, FIXME, etc.)
	-- These are commonly recognized by plugins like todo-comments.nvim
	hi("CommentTodo", { ctermfg = colors.br_yellow, cterm = "bold" })
	hi("CommentNote", { ctermfg = colors.br_blue, cterm = "bold" })
	hi("CommentFixme", { ctermfg = colors.br_red, cterm = "bold" })
	hi("CommentHack", { ctermfg = colors.br_red, cterm = "bold" })
	hi("CommentWarning", { ctermfg = colors.br_yellow, cterm = "bold" })
	hi("CommentBug", { ctermfg = colors.br_red, cterm = "bold" })
end

return M
