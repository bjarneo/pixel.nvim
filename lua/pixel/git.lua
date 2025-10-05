-- Git support for Pixel colorscheme
-- This module provides Git-related highlight groups

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors, config)

  -- Git gutter highlight groups
  hi("GitGutterAdd", { ctermfg = colors.green })
  hi("GitGutterChange", { ctermfg = colors.yellow })
  hi("GitGutterDelete", { ctermfg = colors.red })
  hi("GitGutterChangeDelete", { ctermfg = colors.magenta })
end

return M