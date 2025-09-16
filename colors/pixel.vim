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
let black      = 0    " ansi 0 - background
let red        = 1    " ansi 1 - red (errors, functions)
let green      = 2    " ansi 2 - green (strings, added)
let yellow     = 3    " ansi 3 - yellow (types, warnings)
let blue       = 4    " ansi 4 - blue (keywords, info)
let magenta    = 5    " ansi 5 - magenta (constants)
let cyan       = 6    " ansi 6 - cyan (special)
let white      = 7    " ansi 7 - foreground
let br_black   = 8    " ansi 8 - bright black (comments)
let br_red     = 9    " ansi 9 - bright red
let br_green   = 10   " ansi 10 - bright green
let br_yellow  = 11   " ansi 11 - bright yellow
let br_blue    = 12   " ansi 12 - bright blue
let br_magenta = 13   " ansi 13 - bright magenta
let br_cyan    = 14   " ansi 14 - bright cyan
let br_white   = 15   " ansi 15 - bright white

" Disable termguicolors to force terminal ANSI color usage
" This ensures the colorscheme uses the terminal's color palette
if has('nvim')
  set notermguicolors
endif

" Basic highlight groups - using only ANSI terminal colors
execute 'hi Normal ctermfg=' . white . ' ctermbg=' . black
execute 'hi Cursor ctermfg=' . black . ' ctermbg=' . white
execute 'hi CursorLine ctermbg=' . br_black
execute 'hi CursorColumn ctermbg=' . br_black
execute 'hi LineNr ctermfg=' . br_black
execute 'hi CursorLineNr ctermfg=' . white

" Syntax highlighting - using ANSI colors for dynamic adaptation
execute 'hi Comment ctermfg=' . br_black . ' cterm=italic'
execute 'hi String ctermfg=' . green
execute 'hi Character ctermfg=' . br_green
execute 'hi Number ctermfg=' . cyan
execute 'hi Float ctermfg=' . cyan
execute 'hi Boolean ctermfg=' . red
execute 'hi Constant ctermfg=' . magenta
execute 'hi Identifier ctermfg=' . white
execute 'hi Function ctermfg=' . red . ' cterm=bold'
execute 'hi Statement ctermfg=' . blue . ' cterm=bold'
execute 'hi Conditional ctermfg=' . blue
execute 'hi Repeat ctermfg=' . blue
execute 'hi Label ctermfg=' . blue
execute 'hi Operator ctermfg=' . white
execute 'hi Keyword ctermfg=' . blue . ' cterm=bold'
execute 'hi Exception ctermfg=' . red
execute 'hi PreProc ctermfg=' . br_magenta
execute 'hi Include ctermfg=' . br_magenta
execute 'hi Define ctermfg=' . br_magenta
execute 'hi Macro ctermfg=' . br_magenta
execute 'hi PreCondit ctermfg=' . br_magenta
execute 'hi Type ctermfg=' . yellow . ' cterm=bold'
execute 'hi StorageClass ctermfg=' . yellow
execute 'hi Structure ctermfg=' . yellow
execute 'hi Typedef ctermfg=' . yellow
execute 'hi Special ctermfg=' . cyan
execute 'hi SpecialChar ctermfg=' . br_cyan
execute 'hi Tag ctermfg=' . red
execute 'hi Delimiter ctermfg=' . white
execute 'hi SpecialComment ctermfg=' . br_yellow
execute 'hi Debug ctermfg=' . br_red

" Additional syntax highlighting
execute 'hi Class ctermfg=' . yellow . ' cterm=bold'
execute 'hi Variable ctermfg=' . white
execute 'hi Property ctermfg=' . cyan
execute 'hi Method ctermfg=' . red

" UI elements
execute 'hi Visual ctermbg=' . br_black
execute 'hi Search ctermfg=' . black . ' ctermbg=' . yellow . ' cterm=bold'
execute 'hi IncSearch ctermfg=' . black . ' ctermbg=' . br_yellow . ' cterm=bold'
execute 'hi StatusLine ctermfg=' . white . ' ctermbg=' . br_black . ' cterm=bold'
execute 'hi StatusLineNC ctermfg=' . br_black . ' ctermbg=' . black
execute 'hi VertSplit ctermfg=' . br_black
execute 'hi Pmenu ctermfg=' . white . ' ctermbg=' . br_black
execute 'hi PmenuSel ctermfg=' . black . ' ctermbg=' . blue . ' cterm=bold'
execute 'hi PmenuSbar ctermbg=' . br_black
execute 'hi PmenuThumb ctermbg=' . white
execute 'hi TabLine ctermfg=' . br_black . ' ctermbg=' . black
execute 'hi TabLineFill ctermbg=' . black
execute 'hi TabLineSel ctermfg=' . white . ' ctermbg=' . br_black . ' cterm=bold'

" Diff highlighting
execute 'hi DiffAdd ctermfg=' . green . ' ctermbg=' . black . ' cterm=bold'
execute 'hi DiffChange ctermfg=' . yellow . ' ctermbg=' . black
execute 'hi DiffDelete ctermfg=' . red . ' ctermbg=' . black . ' cterm=bold'
execute 'hi DiffText ctermfg=' . br_yellow . ' ctermbg=' . black . ' cterm=bold'

" Git gutter
execute 'hi GitGutterAdd ctermfg=' . green
execute 'hi GitGutterChange ctermfg=' . yellow
execute 'hi GitGutterDelete ctermfg=' . red
execute 'hi GitGutterChangeDelete ctermfg=' . magenta

" Error and warning
execute 'hi Error ctermfg=' . br_red . ' ctermbg=' . black . ' cterm=bold'
execute 'hi Warning ctermfg=' . br_yellow . ' ctermbg=' . black . ' cterm=bold'
execute 'hi ErrorMsg ctermfg=' . br_red . ' cterm=bold'
execute 'hi WarningMsg ctermfg=' . br_yellow . ' cterm=bold'
execute 'hi Question ctermfg=' . green . ' cterm=bold'
execute 'hi MoreMsg ctermfg=' . green . ' cterm=bold'

" Folding
execute 'hi Folded ctermfg=' . br_black . ' ctermbg=' . black . ' cterm=italic'
execute 'hi FoldColumn ctermfg=' . br_black . ' ctermbg=' . black

" Spelling
execute 'hi SpellBad ctermfg=' . red . ' cterm=underline'
execute 'hi SpellCap ctermfg=' . blue . ' cterm=underline'
execute 'hi SpellLocal ctermfg=' . cyan . ' cterm=underline'
execute 'hi SpellRare ctermfg=' . magenta . ' cterm=underline'

" File explorer and tree colors
execute 'hi Directory ctermfg=' . blue . ' cterm=bold'
execute 'hi NvimTreeFolderName ctermfg=' . blue
execute 'hi NvimTreeFolderIcon ctermfg=' . blue
execute 'hi NvimTreeOpenedFolderName ctermfg=' . br_blue . ' cterm=bold'
execute 'hi NvimTreeFileName ctermfg=' . white
execute 'hi NvimTreeExecFile ctermfg=' . green . ' cterm=bold'
execute 'hi NvimTreeSpecialFile ctermfg=' . magenta . ' cterm=bold'
execute 'hi NvimTreeImageFile ctermfg=' . cyan
execute 'hi NvimTreeMarkdownFile ctermfg=' . red
execute 'hi NvimTreeIndentMarker ctermfg=' . br_black

" Neo-tree colors
execute 'hi NeoTreeDirectoryName ctermfg=' . blue
execute 'hi NeoTreeDirectoryIcon ctermfg=' . blue
execute 'hi NeoTreeFileName ctermfg=' . white
execute 'hi NeoTreeFileIcon ctermfg=' . cyan
execute 'hi NeoTreeModified ctermfg=' . yellow
execute 'hi NeoTreeGitAdded ctermfg=' . green
execute 'hi NeoTreeGitDeleted ctermfg=' . red
execute 'hi NeoTreeGitModified ctermfg=' . yellow
execute 'hi NeoTreeGitUntracked ctermfg=' . br_black

" Telescope colors
execute 'hi TelescopeSelection ctermfg=' . white . ' ctermbg=' . br_black . ' cterm=bold'
execute 'hi TelescopeSelectionCaret ctermfg=' . red . ' cterm=bold'
execute 'hi TelescopeMultiSelection ctermfg=' . green . ' cterm=bold'
execute 'hi TelescopeNormal ctermfg=' . white
execute 'hi TelescopeBorder ctermfg=' . br_black
execute 'hi TelescopePromptBorder ctermfg=' . blue
execute 'hi TelescopeResultsBorder ctermfg=' . br_black
execute 'hi TelescopePreviewBorder ctermfg=' . br_black
execute 'hi TelescopeTitle ctermfg=' . white . ' cterm=bold'
execute 'hi TelescopePromptTitle ctermfg=' . blue . ' cterm=bold'
execute 'hi TelescopeResultsTitle ctermfg=' . green . ' cterm=bold'
execute 'hi TelescopePreviewTitle ctermfg=' . cyan . ' cterm=bold'

" LSP and diagnostic colors
execute 'hi DiagnosticError ctermfg=' . red
execute 'hi DiagnosticWarn ctermfg=' . yellow
execute 'hi DiagnosticInfo ctermfg=' . blue
execute 'hi DiagnosticHint ctermfg=' . br_black
hi DiagnosticUnderlineError cterm=underline
hi DiagnosticUnderlineWarn cterm=underline
hi DiagnosticUnderlineInfo cterm=underline
hi DiagnosticUnderlineHint cterm=underline

" LSP semantic highlighting - treesitter
execute 'hi @variable ctermfg=' . white
execute 'hi @variable.builtin ctermfg=' . magenta . ' cterm=italic'
execute 'hi @variable.parameter ctermfg=' . white . ' cterm=italic'
execute 'hi @constant ctermfg=' . magenta . ' cterm=bold'
execute 'hi @constant.builtin ctermfg=' . magenta . ' cterm=bold,italic'
execute 'hi @constant.macro ctermfg=' . br_magenta . ' cterm=bold'
execute 'hi @string ctermfg=' . green
execute 'hi @string.escape ctermfg=' . br_green . ' cterm=bold'
execute 'hi @string.special ctermfg=' . cyan
execute 'hi @character ctermfg=' . br_green
execute 'hi @number ctermfg=' . cyan
execute 'hi @boolean ctermfg=' . red . ' cterm=bold'
execute 'hi @float ctermfg=' . cyan
execute 'hi @function ctermfg=' . red . ' cterm=bold'
execute 'hi @function.builtin ctermfg=' . red . ' cterm=bold,italic'
execute 'hi @function.macro ctermfg=' . br_red . ' cterm=bold'
execute 'hi @method ctermfg=' . red
execute 'hi @constructor ctermfg=' . yellow . ' cterm=bold'
execute 'hi @parameter ctermfg=' . white . ' cterm=italic'
execute 'hi @keyword ctermfg=' . blue . ' cterm=bold'
execute 'hi @keyword.function ctermfg=' . blue . ' cterm=italic'
execute 'hi @keyword.operator ctermfg=' . blue
execute 'hi @keyword.return ctermfg=' . blue . ' cterm=bold'
execute 'hi @conditional ctermfg=' . blue
execute 'hi @repeat ctermfg=' . blue
execute 'hi @label ctermfg=' . blue
execute 'hi @operator ctermfg=' . white
execute 'hi @exception ctermfg=' . red . ' cterm=bold'
execute 'hi @type ctermfg=' . yellow . ' cterm=bold'
execute 'hi @type.builtin ctermfg=' . yellow . ' cterm=bold,italic'
execute 'hi @type.definition ctermfg=' . yellow
execute 'hi @storageclass ctermfg=' . yellow
execute 'hi @structure ctermfg=' . yellow
execute 'hi @namespace ctermfg=' . yellow . ' cterm=italic'
execute 'hi @include ctermfg=' . br_magenta . ' cterm=bold'
execute 'hi @preproc ctermfg=' . br_magenta
execute 'hi @debug ctermfg=' . br_red
execute 'hi @tag ctermfg=' . red
execute 'hi @tag.attribute ctermfg=' . cyan
execute 'hi @tag.delimiter ctermfg=' . white
execute 'hi @comment ctermfg=' . br_black . ' cterm=italic'
execute 'hi @comment.documentation ctermfg=' . br_yellow . ' cterm=italic'

" Treesitter context
execute 'hi TreesitterContext ctermbg=' . br_black
execute 'hi TreesitterContextLineNumber ctermfg=' . white . ' cterm=bold'
