" Lualine support for Pixel colorscheme
" This file is automatically loaded by the main colorscheme
" Uses color variables from the main pixel.vim file

function! pixel#lualine#setup()
  " Lualine highlight groups
  execute 'hi LualineNormalA ctermfg=' . g:pixel_black . ' ctermbg=' . g:pixel_blue . ' cterm=bold'
  execute 'hi LualineNormalB ctermfg=' . g:pixel_white . ' ctermbg=' . g:pixel_br_black
  execute 'hi LualineNormalC ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black
  execute 'hi LualineInsertA ctermfg=' . g:pixel_black . ' ctermbg=' . g:pixel_green . ' cterm=bold'
  execute 'hi LualineInsertB ctermfg=' . g:pixel_white . ' ctermbg=' . g:pixel_br_black
  execute 'hi LualineInsertC ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black
  execute 'hi LualineVisualA ctermfg=' . g:pixel_black . ' ctermbg=' . g:pixel_magenta . ' cterm=bold'
  execute 'hi LualineVisualB ctermfg=' . g:pixel_white . ' ctermbg=' . g:pixel_br_black
  execute 'hi LualineVisualC ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black
  execute 'hi LualineReplaceA ctermfg=' . g:pixel_black . ' ctermbg=' . g:pixel_red . ' cterm=bold'
  execute 'hi LualineReplaceB ctermfg=' . g:pixel_white . ' ctermbg=' . g:pixel_br_black
  execute 'hi LualineReplaceC ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black
  execute 'hi LualineCommandA ctermfg=' . g:pixel_black . ' ctermbg=' . g:pixel_yellow . ' cterm=bold'
  execute 'hi LualineCommandB ctermfg=' . g:pixel_white . ' ctermbg=' . g:pixel_br_black
  execute 'hi LualineCommandC ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black
  execute 'hi LualineInactiveA ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black
  execute 'hi LualineInactiveB ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black
  execute 'hi LualineInactiveC ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black
endfunction