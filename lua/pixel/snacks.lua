-- Snacks.nvim highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
-- Snacks dashboard
hi("SnacksDashboardHeader", { ctermfg = colors.red, cterm = "bold" })
hi("SnacksDashboardFooter", { ctermfg = colors.br_black })
hi("SnacksDashboardKey", { ctermfg = colors.blue, cterm = "bold" })
hi("SnacksDashboardDesc", { ctermfg = colors.white })
hi("SnacksDashboardIcon", { ctermfg = colors.cyan })

-- Snacks notifications
hi("SnacksNotification", { ctermfg = colors.white, ctermbg = colors.br_black })
hi("SnacksNotificationError", { ctermfg = colors.br_red })
hi("SnacksNotificationWarn", { ctermfg = colors.br_yellow })
hi("SnacksNotificationInfo", { ctermfg = colors.br_blue })
hi("SnacksNotificationBorder", { ctermfg = colors.br_black, ctermbg = colors.br_black })

-- Snacks input
hi("SnacksInputNormal", { ctermfg = colors.white, ctermbg = colors.br_black })
hi("SnacksInputBorder", { ctermfg = colors.br_black, ctermbg = colors.br_black })
hi("SnacksInputTitle", { ctermfg = colors.blue, cterm = "bold" })

-- Snacks picker (file picker)
hi("SnacksPickerNormal", { ctermfg = colors.white, ctermbg = colors.br_black })
hi("SnacksPickerBorder", { ctermfg = colors.br_black, ctermbg = colors.br_black })
hi("SnacksPickerMatch", { ctermfg = colors.br_green, cterm = "bold" })
end

return M
