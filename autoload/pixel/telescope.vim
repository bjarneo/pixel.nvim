" Telescope support for Pixel colorscheme
" This file is automatically loaded by the main colorscheme
" Uses color variables from the main pixel.vim file

function! pixel#telescope#setup()
  " Telescope highlight groups
  execute 'hi TelescopeSelection ctermfg=' . g:pixel_white . ' ctermbg=' . g:pixel_br_black . ' cterm=bold'
  execute 'hi TelescopeSelectionCaret ctermfg=' . g:pixel_red . ' cterm=bold'
  execute 'hi TelescopeMultiSelection ctermfg=' . g:pixel_green . ' cterm=bold'
  execute 'hi TelescopeNormal ctermfg=' . g:pixel_white
  execute 'hi TelescopeBorder ctermfg=' . g:pixel_br_black
  execute 'hi TelescopePromptBorder ctermfg=' . g:pixel_blue
  execute 'hi TelescopeResultsBorder ctermfg=' . g:pixel_br_black
  execute 'hi TelescopePreviewBorder ctermfg=' . g:pixel_br_black
  execute 'hi TelescopeTitle ctermfg=' . g:pixel_white . ' cterm=bold'
  execute 'hi TelescopePromptTitle ctermfg=' . g:pixel_blue . ' cterm=bold'
  execute 'hi TelescopeResultsTitle ctermfg=' . g:pixel_green . ' cterm=bold'
  execute 'hi TelescopePreviewTitle ctermfg=' . g:pixel_cyan . ' cterm=bold'
endfunction