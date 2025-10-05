-- Pixel colorscheme for Neovim - Dynamic ANSI color adaptation
-- Maintainer: Bjarne Øverli
-- License: MIT

local M = {}

-- Import color definitions
local colors = require("pixel.colorscheme")

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

-- Default configuration
local default_config = {
	disable_italics = false,
}

-- Current configuration
local config = vim.deepcopy(default_config)

-- Setup basic colorscheme settings
function M.setup(opts)
	-- Merge user config with defaults
	config = vim.tbl_deep_extend("force", default_config, opts or {})

	-- Clear existing highlights
	vim.cmd("highlight clear")

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Set colorscheme name
	vim.g.colors_name = "pixel"

	-- Set background
	vim.opt.background = "dark"

	-- Disable termguicolors to force terminal ANSI color usage
	-- This ensures the colorscheme uses the terminal's color palette
	vim.opt.termguicolors = false

	-- Basic highlight groups - using only ANSI terminal colors
	hi("Normal", { ctermfg = colors.white })
	hi("Cursor", { ctermfg = colors.black, ctermbg = colors.white })
	hi("CursorLine", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("CursorColumn", { ctermbg = colors.br_black })
	hi("LineNr", { ctermfg = colors.br_black })
	hi("CursorLineNr", { ctermfg = colors.white })

	-- Syntax highlighting - using ANSI colors for dynamic adaptation
	hi("Comment", { ctermfg = colors.br_black, cterm = config.disable_italics and "NONE" or "italic" })
	hi("String", { ctermfg = colors.green })
	hi("Character", { ctermfg = colors.br_green })
	hi("Number", { ctermfg = colors.cyan })
	hi("Float", { ctermfg = colors.cyan })
	hi("Boolean", { ctermfg = colors.red })
	hi("Constant", { ctermfg = colors.magenta })
	hi("Identifier", { ctermfg = colors.white })
	hi("Function", { ctermfg = colors.red, cterm = "bold" })
	hi("Statement", { ctermfg = colors.blue, cterm = "bold" })
	hi("Conditional", { ctermfg = colors.blue })
	hi("Repeat", { ctermfg = colors.blue })
	hi("Label", { ctermfg = colors.blue })
	hi("Operator", { ctermfg = colors.white })
	hi("Keyword", { ctermfg = colors.blue, cterm = "bold" })
	hi("Exception", { ctermfg = colors.red })
	hi("PreProc", { ctermfg = colors.br_magenta })
	hi("Include", { ctermfg = colors.br_magenta })
	hi("Define", { ctermfg = colors.br_magenta })
	hi("Macro", { ctermfg = colors.br_magenta })
	hi("PreCondit", { ctermfg = colors.br_magenta })
	hi("Type", { ctermfg = colors.yellow, cterm = "bold" })
	hi("StorageClass", { ctermfg = colors.yellow })
	hi("Structure", { ctermfg = colors.yellow })
	hi("Typedef", { ctermfg = colors.yellow })
	hi("Special", { ctermfg = colors.cyan })
	hi("SpecialChar", { ctermfg = colors.br_cyan })
	hi("Tag", { ctermfg = colors.red })
	hi("Delimiter", { ctermfg = colors.br_black })
	hi("SpecialComment", { ctermfg = colors.br_yellow })
	hi("Debug", { ctermfg = colors.br_red })

	-- Additional syntax highlighting
	hi("Class", { ctermfg = colors.yellow, cterm = "bold" })
	hi("Variable", { ctermfg = colors.white })
	hi("Property", { ctermfg = colors.cyan })
	hi("Method", { ctermfg = colors.red })

	-- UI elements
	hi("Visual", { ctermbg = colors.br_black })
	hi("Search", { ctermfg = colors.black, ctermbg = colors.yellow, cterm = "bold" })
	hi("IncSearch", { ctermfg = colors.black, ctermbg = colors.br_yellow, cterm = "bold" })
	hi("StatusLine", { ctermfg = colors.white, ctermbg = colors.br_black, cterm = "bold" })
	hi("StatusLineNC", { ctermfg = colors.br_black })
	hi("VertSplit", { ctermfg = colors.br_black })
	hi("Pmenu", { ctermfg = colors.white, ctermbg = colors.br_black })
	hi("PmenuSel", { ctermfg = colors.black, ctermbg = colors.blue, cterm = "bold" })
	hi("PmenuSbar", { ctermbg = colors.br_black })
	hi("PmenuThumb", { ctermbg = colors.white })
	hi("TabLine", { ctermfg = colors.br_black })
	hi("TabLineFill", { ctermfg = colors.br_black })
	hi("TabLineSel", { ctermfg = colors.white, ctermbg = colors.br_black, cterm = "bold" })

	-- Diff highlighting
	hi("DiffAdd", { ctermfg = colors.green, cterm = "bold" })
	hi("DiffChange", { ctermfg = colors.yellow })
	hi("DiffDelete", { ctermfg = colors.red, cterm = "bold" })
	hi("DiffText", { ctermfg = colors.br_yellow, cterm = "bold" })

	-- Error and warning
	hi("Error", { ctermfg = colors.br_red, cterm = "bold" })
	hi("Warning", { ctermfg = colors.br_yellow, cterm = "bold" })
	hi("ErrorMsg", { ctermfg = colors.br_red, cterm = "bold" })
	hi("WarningMsg", { ctermfg = colors.br_yellow, cterm = "bold" })
	hi("Question", { ctermfg = colors.green, cterm = "bold" })
	hi("MoreMsg", { ctermfg = colors.green, cterm = "bold" })

	-- Folding
	hi("Folded", { ctermfg = colors.br_black, cterm = config.disable_italics and "NONE" or "italic" })
	hi("FoldColumn", { ctermfg = colors.br_black })

	-- Spelling
	hi("SpellBad", { ctermfg = colors.red, cterm = "underline" })
	hi("SpellCap", { ctermfg = colors.blue, cterm = "underline" })
	hi("SpellLocal", { ctermfg = colors.cyan, cterm = "underline" })
	hi("SpellRare", { ctermfg = colors.magenta, cterm = "underline" })

	-- File explorer and tree colors
	hi("Directory", { ctermfg = colors.blue, cterm = "bold" })

	-- Load plugin-specific highlight modules
	require("pixel.git").setup(colors, config)
	require("pixel.lsp").setup(colors, config)
	require("pixel.treesitter").setup(colors, config)
	require("pixel.telescope").setup(colors, config)
	require("pixel.nvimtree").setup(colors, config)
	require("pixel.neo_tree").setup(colors, config)

	-- Load additional common plugin modules
	require("pixel.gitsigns").setup(colors, config)
	require("pixel.mason").setup(colors, config)
	require("pixel.trouble").setup(colors, config)
	require("pixel.indent_blankline").setup(colors, config)
	require("pixel.flash").setup(colors, config)
	require("pixel.noice").setup(colors, config)
	require("pixel.whichkey").setup(colors, config)
	require("pixel.fidget").setup(colors, config)
	require("pixel.diffview").setup(colors, config)
	require("pixel.conform").setup(colors, config)
	require("pixel.comment").setup(colors, config)
	require("pixel.lint").setup(colors, config)
	require("pixel.nvim-dap").setup(colors, config)
	require("pixel.mini").setup(colors, config)
	require("pixel.markdown").setup(colors, config)
	require("pixel.snacks").setup(colors, config)
	require("pixel.blink").setup(colors, config)
end

-- Export colors for use in other modules
M.colors = colors

return M
