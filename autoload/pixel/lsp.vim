" LSP and diagnostics support for Pixel colorscheme
" This file is automatically loaded by the main colorscheme
" Uses color variables from the main pixel.vim file

function! pixel#lsp#setup()
  " LSP and diagnostic highlight groups
  execute 'hi DiagnosticError ctermfg=' . g:pixel_red
  execute 'hi DiagnosticWarn ctermfg=' . g:pixel_yellow
  execute 'hi DiagnosticInfo ctermfg=' . g:pixel_blue
  execute 'hi DiagnosticHint ctermfg=' . g:pixel_br_black
  hi DiagnosticUnderlineError cterm=underline
  hi DiagnosticUnderlineWarn cterm=underline
  hi DiagnosticUnderlineInfo cterm=underline
  hi DiagnosticUnderlineHint cterm=underline
endfunction