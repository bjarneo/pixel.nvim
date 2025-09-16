-- Color definitions for Pixel colorscheme
-- ANSI color variables for cleaner code
local colors = {
	black = 0, -- ansi 0 - background
	red = 1, -- ansi 1 - red (errors, functions)
	green = 2, -- ansi 2 - green (strings, added)
	yellow = 3, -- ansi 3 - yellow (types, warnings)
	blue = 4, -- ansi 4 - blue (keywords, info)
	magenta = 5, -- ansi 5 - magenta (constants)
	cyan = 6, -- ansi 6 - cyan (special)
	white = 7, -- ansi 7 - foreground
	br_black = 8, -- ansi 8 - bright black (comments)
	br_red = 9, -- ansi 9 - bright red
	br_green = 10, -- ansi 10 - bright green
	br_yellow = 11, -- ansi 11 - bright yellow
	br_blue = 12, -- ansi 12 - bright blue
	br_magenta = 13, -- ansi 13 - bright magenta
	br_cyan = 14, -- ansi 14 - bright cyan
	br_white = 15, -- ansi 15 - bright white
}

return colors