" Treesitter support for Pixel colorscheme
" This file is automatically loaded by the main colorscheme
" Uses color variables from the main pixel.vim file

function! pixel#treesitter#setup()
  " LSP semantic highlighting - treesitter
  execute 'hi @variable ctermfg=' . g:pixel_white
  execute 'hi @variable.builtin ctermfg=' . g:pixel_magenta . ' cterm=italic'
  execute 'hi @variable.parameter ctermfg=' . g:pixel_white . ' cterm=italic'
  execute 'hi @constant ctermfg=' . g:pixel_magenta . ' cterm=bold'
  execute 'hi @constant.builtin ctermfg=' . g:pixel_magenta . ' cterm=bold,italic'
  execute 'hi @constant.macro ctermfg=' . g:pixel_br_magenta . ' cterm=bold'
  execute 'hi @string ctermfg=' . g:pixel_green
  execute 'hi @string.escape ctermfg=' . g:pixel_br_green . ' cterm=bold'
  execute 'hi @string.special ctermfg=' . g:pixel_cyan
  execute 'hi @character ctermfg=' . g:pixel_br_green
  execute 'hi @number ctermfg=' . g:pixel_cyan
  execute 'hi @boolean ctermfg=' . g:pixel_red . ' cterm=bold'
  execute 'hi @float ctermfg=' . g:pixel_cyan
  execute 'hi @function ctermfg=' . g:pixel_red . ' cterm=bold'
  execute 'hi @function.builtin ctermfg=' . g:pixel_red . ' cterm=bold,italic'
  execute 'hi @function.macro ctermfg=' . g:pixel_br_red . ' cterm=bold'
  execute 'hi @method ctermfg=' . g:pixel_red
  execute 'hi @constructor ctermfg=' . g:pixel_yellow . ' cterm=bold'
  execute 'hi @parameter ctermfg=' . g:pixel_white . ' cterm=italic'
  execute 'hi @keyword ctermfg=' . g:pixel_blue . ' cterm=bold'
  execute 'hi @keyword.function ctermfg=' . g:pixel_blue . ' cterm=italic'
  execute 'hi @keyword.operator ctermfg=' . g:pixel_blue
  execute 'hi @keyword.return ctermfg=' . g:pixel_blue . ' cterm=bold'
  execute 'hi @conditional ctermfg=' . g:pixel_blue
  execute 'hi @repeat ctermfg=' . g:pixel_blue
  execute 'hi @label ctermfg=' . g:pixel_blue
  execute 'hi @operator ctermfg=' . g:pixel_white
  execute 'hi @exception ctermfg=' . g:pixel_red . ' cterm=bold'
  execute 'hi @type ctermfg=' . g:pixel_yellow . ' cterm=bold'
  execute 'hi @type.builtin ctermfg=' . g:pixel_yellow . ' cterm=bold,italic'
  execute 'hi @type.definition ctermfg=' . g:pixel_yellow
  execute 'hi @storageclass ctermfg=' . g:pixel_yellow
  execute 'hi @structure ctermfg=' . g:pixel_yellow
  execute 'hi @namespace ctermfg=' . g:pixel_yellow . ' cterm=italic'
  execute 'hi @include ctermfg=' . g:pixel_br_magenta . ' cterm=bold'
  execute 'hi @preproc ctermfg=' . g:pixel_br_magenta
  execute 'hi @debug ctermfg=' . g:pixel_br_red
  execute 'hi @tag ctermfg=' . g:pixel_red
  execute 'hi @tag.attribute ctermfg=' . g:pixel_cyan
  execute 'hi @tag.delimiter ctermfg=' . g:pixel_white
  execute 'hi @comment ctermfg=' . g:pixel_br_black . ' cterm=italic'
  execute 'hi @comment.documentation ctermfg=' . g:pixel_br_yellow . ' cterm=italic'

  " Treesitter context
  execute 'hi TreesitterContext ctermbg=' . g:pixel_br_black
  execute 'hi TreesitterContextLineNumber ctermfg=' . g:pixel_white . ' cterm=bold'
endfunction