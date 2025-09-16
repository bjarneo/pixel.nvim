" Git support for Pixel colorscheme
" This file is automatically loaded by the main colorscheme
" Uses color variables from the main pixel.vim file

function! pixel#git#setup()
  " Git gutter highlight groups
  execute 'hi GitGutterAdd ctermfg=' . g:pixel_green
  execute 'hi GitGutterChange ctermfg=' . g:pixel_yellow
  execute 'hi GitGutterDelete ctermfg=' . g:pixel_red
  execute 'hi GitGutterChangeDelete ctermfg=' . g:pixel_magenta
endfunction