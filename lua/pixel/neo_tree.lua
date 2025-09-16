-- Neo-tree support for Pixel colorscheme
-- This module provides Neo-tree highlight groups

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

  -- Neo-tree highlight groups
  hi("NeoTreeDirectoryName", { ctermfg = colors.blue })
  hi("NeoTreeDirectoryIcon", { ctermfg = colors.blue })
  hi("NeoTreeFileName", { ctermfg = colors.white })
  hi("NeoTreeFileIcon", { ctermfg = colors.cyan })
  hi("NeoTreeModified", { ctermfg = colors.yellow })
  hi("NeoTreeGitAdded", { ctermfg = colors.green })
  hi("NeoTreeGitDeleted", { ctermfg = colors.red })
  hi("NeoTreeGitModified", { ctermfg = colors.yellow })
  hi("NeoTreeGitUntracked", { ctermfg = colors.br_black })
end

return M