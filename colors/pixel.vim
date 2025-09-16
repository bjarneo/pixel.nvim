" Pixel colorscheme for Vim/Neovim - Dynamic ANSI color adaptation
" Maintainer: Bjarne Øverli
" License: MIT

" Neovim-only Lua colorscheme
if !has('nvim')
  echohl ErrorMsg
  echom "pixel.nvim requires Neovim"
  echohl None
  finish
endif

lua require('pixel').setup()