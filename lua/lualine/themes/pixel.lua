-- Lualine theme for Pixel colorscheme
local colors = require("pixel.colorscheme")

local M = {}

M.normal = {
	a = { bg = colors.blue, fg = colors.white, gui = "bold" },
	b = { bg = colors.br_black, fg = colors.blue },
	c = { bg = colors.black, fg = colors.white },
	x = { bg = colors.black, fg = colors.white },
}

M.insert = {
	a = { bg = colors.green, fg = colors.black },
	b = { bg = colors.br_black, fg = colors.green },
}

M.command = {
	a = { bg = colors.yellow, fg = colors.black },
	b = { bg = colors.br_black, fg = colors.yellow },
}

M.visual = {
	a = { bg = colors.magenta, fg = colors.black },
	b = { bg = colors.br_black, fg = colors.magenta },
}

M.replace = {
	a = { bg = colors.red, fg = colors.white },
	b = { bg = colors.br_black, fg = colors.red },
}

M.inactive = {
	a = { bg = colors.black, fg = colors.br_black },
	b = { bg = colors.black, fg = colors.br_black },
	c = { bg = colors.black, fg = colors.br_black },
}

return M
