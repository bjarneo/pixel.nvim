" Neo-tree support for Pixel colorscheme
" This file is automatically loaded by the main colorscheme
" Uses color variables from the main pixel.vim file

function! pixel#neo_tree#setup()
  " Neo-tree highlight groups
  execute 'hi NeoTreeDirectoryName ctermfg=' . g:pixel_blue
  execute 'hi NeoTreeDirectoryIcon ctermfg=' . g:pixel_blue
  execute 'hi NeoTreeFileName ctermfg=' . g:pixel_white
  execute 'hi NeoTreeFileIcon ctermfg=' . g:pixel_cyan
  execute 'hi NeoTreeModified ctermfg=' . g:pixel_yellow
  execute 'hi NeoTreeGitAdded ctermfg=' . g:pixel_green
  execute 'hi NeoTreeGitDeleted ctermfg=' . g:pixel_red
  execute 'hi NeoTreeGitModified ctermfg=' . g:pixel_yellow
  execute 'hi NeoTreeGitUntracked ctermfg=' . g:pixel_br_black
endfunction