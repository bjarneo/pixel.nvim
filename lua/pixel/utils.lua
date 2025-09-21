--- Utility functions for the Pixel colorscheme
local M = {}

--- Helper function to set highlight groups with cterm attributes
--- This function builds a vim highlight command string and executes it
--- @param group string The highlight group name to set
--- @param opts table Table containing highlight options:
---   - ctermfg: string|number Terminal foreground color (0-255 or color name)
---   - ctermbg: string|number Terminal background color (0-255 or color name)
---   - cterm: string Terminal attributes (bold, italic, underline, etc.)
function M.hi(group, opts)
  -- Start building the highlight command string
  local cmd = "highlight " .. group

  -- Add terminal foreground color if specified
  if opts.ctermfg then
    cmd = cmd .. " ctermfg=" .. opts.ctermfg
  end

  -- Add terminal background color if specified
  if opts.ctermbg then
    cmd = cmd .. " ctermbg=" .. opts.ctermbg
  end

  -- Add terminal attributes (bold, italic, etc.) if specified
  if opts.cterm then
    cmd = cmd .. " cterm=" .. opts.cterm
  end

  -- Execute the highlight command
  vim.cmd(cmd)
end

return M