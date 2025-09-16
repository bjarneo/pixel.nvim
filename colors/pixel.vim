" Pixel colorscheme for Vim/Neovim - Dynamic ANSI color adaptation
" Maintainer: Bjarne Øverli
" License: MIT

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "pixel"

" ANSI color variables for cleaner code
let g:pixel_black      = 0    " ansi 0 - background
let g:pixel_red        = 1    " ansi 1 - red (errors, functions)
let g:pixel_green      = 2    " ansi 2 - green (strings, added)
let g:pixel_yellow     = 3    " ansi 3 - yellow (types, warnings)
let g:pixel_blue       = 4    " ansi 4 - blue (keywords, info)
let g:pixel_magenta    = 5    " ansi 5 - magenta (constants)
let g:pixel_cyan       = 6    " ansi 6 - cyan (special)
let g:pixel_white      = 7    " ansi 7 - foreground
let g:pixel_br_black   = 8    " ansi 8 - bright black (comments)
let g:pixel_br_red     = 9    " ansi 9 - bright red
let g:pixel_br_green   = 10   " ansi 10 - bright green
let g:pixel_br_yellow  = 11   " ansi 11 - bright yellow
let g:pixel_br_blue    = 12   " ansi 12 - bright blue
let g:pixel_br_magenta = 13   " ansi 13 - bright magenta
let g:pixel_br_cyan    = 14   " ansi 14 - bright cyan
let g:pixel_br_white   = 15   " ansi 15 - bright white

" Disable termguicolors to force terminal ANSI color usage
" This ensures the colorscheme uses the terminal's color palette
if has('nvim')
  set notermguicolors
endif

" Basic highlight groups - using only ANSI terminal colors
execute 'hi Normal ctermfg=' . g:pixel_white . ' ctermbg=' . g:pixel_black
execute 'hi Cursor ctermfg=' . g:pixel_black . ' ctermbg=' . g:pixel_white
execute 'hi CursorLine ctermbg=' . g:pixel_br_black
execute 'hi CursorColumn ctermbg=' . g:pixel_br_black
execute 'hi LineNr ctermfg=' . g:pixel_br_black
execute 'hi CursorLineNr ctermfg=' . g:pixel_white

" Syntax highlighting - using ANSI colors for dynamic adaptation
execute 'hi Comment ctermfg=' . g:pixel_br_black . ' cterm=italic'
execute 'hi String ctermfg=' . g:pixel_green
execute 'hi Character ctermfg=' . g:pixel_br_green
execute 'hi Number ctermfg=' . g:pixel_cyan
execute 'hi Float ctermfg=' . g:pixel_cyan
execute 'hi Boolean ctermfg=' . g:pixel_red
execute 'hi Constant ctermfg=' . g:pixel_magenta
execute 'hi Identifier ctermfg=' . g:pixel_white
execute 'hi Function ctermfg=' . g:pixel_red . ' cterm=bold'
execute 'hi Statement ctermfg=' . g:pixel_blue . ' cterm=bold'
execute 'hi Conditional ctermfg=' . g:pixel_blue
execute 'hi Repeat ctermfg=' . g:pixel_blue
execute 'hi Label ctermfg=' . g:pixel_blue
execute 'hi Operator ctermfg=' . g:pixel_white
execute 'hi Keyword ctermfg=' . g:pixel_blue . ' cterm=bold'
execute 'hi Exception ctermfg=' . g:pixel_red
execute 'hi PreProc ctermfg=' . g:pixel_br_magenta
execute 'hi Include ctermfg=' . g:pixel_br_magenta
execute 'hi Define ctermfg=' . g:pixel_br_magenta
execute 'hi Macro ctermfg=' . g:pixel_br_magenta
execute 'hi PreCondit ctermfg=' . g:pixel_br_magenta
execute 'hi Type ctermfg=' . g:pixel_yellow . ' cterm=bold'
execute 'hi StorageClass ctermfg=' . g:pixel_yellow
execute 'hi Structure ctermfg=' . g:pixel_yellow
execute 'hi Typedef ctermfg=' . g:pixel_yellow
execute 'hi Special ctermfg=' . g:pixel_cyan
execute 'hi SpecialChar ctermfg=' . g:pixel_br_cyan
execute 'hi Tag ctermfg=' . g:pixel_red
execute 'hi Delimiter ctermfg=' . g:pixel_white
execute 'hi SpecialComment ctermfg=' . g:pixel_br_yellow
execute 'hi Debug ctermfg=' . g:pixel_br_red

" Additional syntax highlighting
execute 'hi Class ctermfg=' . g:pixel_yellow . ' cterm=bold'
execute 'hi Variable ctermfg=' . g:pixel_white
execute 'hi Property ctermfg=' . g:pixel_cyan
execute 'hi Method ctermfg=' . g:pixel_red

" UI elements
execute 'hi Visual ctermbg=' . g:pixel_br_black
execute 'hi Search ctermfg=' . g:pixel_black . ' ctermbg=' . g:pixel_yellow . ' cterm=bold'
execute 'hi IncSearch ctermfg=' . g:pixel_black . ' ctermbg=' . g:pixel_br_yellow . ' cterm=bold'
execute 'hi StatusLine ctermfg=' . g:pixel_white . ' ctermbg=' . g:pixel_br_black . ' cterm=bold'
execute 'hi StatusLineNC ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black
execute 'hi VertSplit ctermfg=' . g:pixel_br_black
execute 'hi Pmenu ctermfg=' . g:pixel_white . ' ctermbg=' . g:pixel_br_black
execute 'hi PmenuSel ctermfg=' . g:pixel_black . ' ctermbg=' . g:pixel_blue . ' cterm=bold'
execute 'hi PmenuSbar ctermbg=' . g:pixel_br_black
execute 'hi PmenuThumb ctermbg=' . g:pixel_white
execute 'hi TabLine ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black
execute 'hi TabLineFill ctermbg=' . g:pixel_black
execute 'hi TabLineSel ctermfg=' . g:pixel_white . ' ctermbg=' . g:pixel_br_black . ' cterm=bold'

" Diff highlighting
execute 'hi DiffAdd ctermfg=' . g:pixel_green . ' ctermbg=' . g:pixel_black . ' cterm=bold'
execute 'hi DiffChange ctermfg=' . g:pixel_yellow . ' ctermbg=' . g:pixel_black
execute 'hi DiffDelete ctermfg=' . g:pixel_red . ' ctermbg=' . g:pixel_black . ' cterm=bold'
execute 'hi DiffText ctermfg=' . g:pixel_br_yellow . ' ctermbg=' . g:pixel_black . ' cterm=bold'


" Error and warning
execute 'hi Error ctermfg=' . g:pixel_br_red . ' ctermbg=' . g:pixel_black . ' cterm=bold'
execute 'hi Warning ctermfg=' . g:pixel_br_yellow . ' ctermbg=' . g:pixel_black . ' cterm=bold'
execute 'hi ErrorMsg ctermfg=' . g:pixel_br_red . ' cterm=bold'
execute 'hi WarningMsg ctermfg=' . g:pixel_br_yellow . ' cterm=bold'
execute 'hi Question ctermfg=' . g:pixel_green . ' cterm=bold'
execute 'hi MoreMsg ctermfg=' . g:pixel_green . ' cterm=bold'

" Folding
execute 'hi Folded ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black . ' cterm=italic'
execute 'hi FoldColumn ctermfg=' . g:pixel_br_black . ' ctermbg=' . g:pixel_black

" Spelling
execute 'hi SpellBad ctermfg=' . g:pixel_red . ' cterm=underline'
execute 'hi SpellCap ctermfg=' . g:pixel_blue . ' cterm=underline'
execute 'hi SpellLocal ctermfg=' . g:pixel_cyan . ' cterm=underline'
execute 'hi SpellRare ctermfg=' . g:pixel_magenta . ' cterm=underline'

" File explorer and tree colors
execute 'hi Directory ctermfg=' . g:pixel_blue . ' cterm=bold'


" Load plugin-specific highlight files
call pixel#git#setup()
call pixel#lsp#setup()
call pixel#treesitter#setup()
call pixel#lualine#setup()
call pixel#telescope#setup()
call pixel#nvim_tree#setup()
call pixel#neo_tree#setup()
