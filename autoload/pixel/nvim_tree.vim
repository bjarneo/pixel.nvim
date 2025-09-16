" NvimTree support for Pixel colorscheme
" This file is automatically loaded by the main colorscheme
" Uses color variables from the main pixel.vim file

function! pixel#nvim_tree#setup()
  " NvimTree highlight groups
  execute 'hi NvimTreeFolderName ctermfg=' . g:pixel_blue
  execute 'hi NvimTreeFolderIcon ctermfg=' . g:pixel_blue
  execute 'hi NvimTreeOpenedFolderName ctermfg=' . g:pixel_br_blue . ' cterm=bold'
  execute 'hi NvimTreeFileName ctermfg=' . g:pixel_white
  execute 'hi NvimTreeExecFile ctermfg=' . g:pixel_green . ' cterm=bold'
  execute 'hi NvimTreeSpecialFile ctermfg=' . g:pixel_magenta . ' cterm=bold'
  execute 'hi NvimTreeImageFile ctermfg=' . g:pixel_cyan
  execute 'hi NvimTreeMarkdownFile ctermfg=' . g:pixel_red
  execute 'hi NvimTreeIndentMarker ctermfg=' . g:pixel_br_black
endfunction