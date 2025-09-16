-- Conform.nvim highlights for Pixel colorscheme
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
	-- Conform formatting
	hi("ConformFormat", { ctermfg = colors.br_blue })
	hi("ConformFormatSuccess", { ctermfg = colors.br_blue })
	hi("ConformFormatError", { ctermfg = colors.br_red })
	hi("ConformFormatWarning", { ctermfg = colors.br_yellow })
	hi("ConformFormatInfo", { ctermfg = colors.br_blue })
	hi("ConformFormatHint", { ctermfg = colors.br_cyan })
	hi("ConformFormatProgress", { ctermfg = colors.red })
	hi("ConformFormatDone", { ctermfg = colors.br_blue })
	hi("ConformFormatPending", { ctermfg = colors.br_yellow })
	hi("ConformFormatRunning", { ctermfg = colors.red })
	hi("ConformFormatCancelled", { ctermfg = colors.br_black })
	hi("ConformFormatTimeout", { ctermfg = colors.br_red })
	hi("ConformFormatSkipped", { ctermfg = colors.br_black })
	hi("ConformFormatDisabled", { ctermfg = colors.br_black })
	hi("ConformFormatEnabled", { ctermfg = colors.br_blue })
	hi("ConformFormatActive", { ctermfg = colors.red, cterm = "bold" })
	hi("ConformFormatInactive", { ctermfg = colors.br_black })
	hi("ConformFormatAvailable", { ctermfg = colors.br_blue })
	hi("ConformFormatUnavailable", { ctermfg = colors.br_red })
	hi("ConformFormatNotFound", { ctermfg = colors.br_red })
	hi("ConformFormatInstalled", { ctermfg = colors.br_blue })
	hi("ConformFormatNotInstalled", { ctermfg = colors.br_red })
	hi("ConformFormatSupported", { ctermfg = colors.br_blue })
	hi("ConformFormatUnsupported", { ctermfg = colors.br_red })
	hi("ConformFormatExecutable", { ctermfg = colors.br_blue })
	hi("ConformFormatNotExecutable", { ctermfg = colors.br_red })
	hi("ConformFormatValid", { ctermfg = colors.br_blue })
	hi("ConformFormatInvalid", { ctermfg = colors.br_red })
	hi("ConformFormatReady", { ctermfg = colors.br_blue })
	hi("ConformFormatNotReady", { ctermfg = colors.br_yellow })
	hi("ConformFormatLoading", { ctermfg = colors.red })
	hi("ConformFormatLoaded", { ctermfg = colors.br_blue })
	hi("ConformFormatUnloaded", { ctermfg = colors.br_black })
	hi("ConformFormatStarting", { ctermfg = colors.red })
	hi("ConformFormatStarted", { ctermfg = colors.br_blue })
	hi("ConformFormatStopping", { ctermfg = colors.br_yellow })
	hi("ConformFormatStopped", { ctermfg = colors.br_black })
	hi("ConformFormatRestarting", { ctermfg = colors.br_yellow })
	hi("ConformFormatRestarted", { ctermfg = colors.br_blue })
	hi("ConformFormatUpdating", { ctermfg = colors.red })
	hi("ConformFormatUpdated", { ctermfg = colors.br_blue })
	hi("ConformFormatInstalling", { ctermfg = colors.red })
	hi("ConformFormatUninstalling", { ctermfg = colors.br_yellow })
	hi("ConformFormatUninstalled", { ctermfg = colors.br_black })
	hi("ConformFormatConfiguring", { ctermfg = colors.red })
	hi("ConformFormatConfigured", { ctermfg = colors.br_blue })
	hi("ConformFormatUnconfigured", { ctermfg = colors.br_black })
	hi("ConformFormatDefault", { ctermfg = colors.white })
	hi("ConformFormatCustom", { ctermfg = colors.cyan })
	hi("ConformFormatBuiltin", { ctermfg = colors.red })
	hi("ConformFormatExternal", { ctermfg = colors.yellow })
	hi("ConformFormatLocal", { ctermfg = colors.green })
	hi("ConformFormatGlobal", { ctermfg = colors.blue })
	hi("ConformFormatProject", { ctermfg = colors.cyan })
	hi("ConformFormatSystem", { ctermfg = colors.yellow })
	hi("ConformFormatUser", { ctermfg = colors.white })
	hi("ConformFormatAuto", { ctermfg = colors.red })
	hi("ConformFormatManual", { ctermfg = colors.blue })
	hi("ConformFormatOnSave", { ctermfg = colors.br_blue })
	hi("ConformFormatOnWrite", { ctermfg = colors.br_blue })
	hi("ConformFormatOnChange", { ctermfg = colors.br_yellow })
	hi("ConformFormatOnInsert", { ctermfg = colors.br_yellow })
	hi("ConformFormatOnCommand", { ctermfg = colors.blue })
	hi("ConformFormatOnKey", { ctermfg = colors.blue })
	hi("ConformFormatOnEvent", { ctermfg = colors.cyan })
	hi("ConformFormatOnTimer", { ctermfg = colors.red })
	hi("ConformFormatOnRequest", { ctermfg = colors.br_blue })
	hi("ConformFormatOnDemand", { ctermfg = colors.blue })
	hi("ConformFormatOnLoad", { ctermfg = colors.br_blue })
	hi("ConformFormatOnUnload", { ctermfg = colors.br_black })
	hi("ConformFormatOnExit", { ctermfg = colors.br_black })
	hi("ConformFormatOnStart", { ctermfg = colors.br_blue })
	hi("ConformFormatOnStop", { ctermfg = colors.br_black })
	hi("ConformFormatOnRestart", { ctermfg = colors.br_yellow })
	hi("ConformFormatOnUpdate", { ctermfg = colors.red })
	hi("ConformFormatOnInstall", { ctermfg = colors.red })
	hi("ConformFormatOnUninstall", { ctermfg = colors.br_yellow })
	hi("ConformFormatOnConfigure", { ctermfg = colors.red })
	hi("ConformFormatOnUnconfigure", { ctermfg = colors.br_black })
end

return M
