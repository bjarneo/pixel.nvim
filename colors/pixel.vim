" Pixel colorscheme for Vim/Neovim - Dynamic ANSI color adaptation
" Maintainer: Bjarne Øverli
" License: MIT

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "pixel"

" Disable termguicolors to force terminal ANSI color usage
" This ensures the colorscheme uses the terminal's color palette
if has('nvim')
  set notermguicolors
endif

" Basic highlight groups - using only ANSI terminal colors
hi Normal ctermfg=7 ctermbg=0
hi Cursor ctermfg=0 ctermbg=7
hi CursorLine ctermbg=8
hi CursorColumn ctermbg=8
hi LineNr ctermfg=8
hi CursorLineNr ctermfg=7

" Syntax highlighting - using ANSI colors for dynamic adaptation
hi Comment ctermfg=8 cterm=italic
hi String ctermfg=2
hi Character ctermfg=10
hi Number ctermfg=6
hi Float ctermfg=6
hi Boolean ctermfg=1
hi Constant ctermfg=5
hi Identifier ctermfg=7
hi Function ctermfg=1 cterm=bold
hi Statement ctermfg=4 cterm=bold
hi Conditional ctermfg=4
hi Repeat ctermfg=4
hi Label ctermfg=4
hi Operator ctermfg=7
hi Keyword ctermfg=4 cterm=bold
hi Exception ctermfg=1
hi PreProc ctermfg=13
hi Include ctermfg=13
hi Define ctermfg=13
hi Macro ctermfg=13
hi PreCondit ctermfg=13
hi Type ctermfg=3 cterm=bold
hi StorageClass ctermfg=3
hi Structure ctermfg=3
hi Typedef ctermfg=3
hi Special ctermfg=6
hi SpecialChar ctermfg=14
hi Tag ctermfg=1
hi Delimiter ctermfg=7
hi SpecialComment ctermfg=11
hi Debug ctermfg=9

" Additional syntax highlighting
hi Class ctermfg=3 cterm=bold
hi Variable ctermfg=7
hi Property ctermfg=6
hi Method ctermfg=1

" UI elements
hi Visual ctermbg=8
hi Search ctermfg=0 ctermbg=3 cterm=bold
hi IncSearch ctermfg=0 ctermbg=11 cterm=bold
hi StatusLine ctermfg=7 ctermbg=8 cterm=bold
hi StatusLineNC ctermfg=8 ctermbg=0
hi VertSplit ctermfg=8
hi Pmenu ctermfg=7 ctermbg=8
hi PmenuSel ctermfg=0 ctermbg=4 cterm=bold
hi PmenuSbar ctermbg=8
hi PmenuThumb ctermbg=7
hi TabLine ctermfg=8 ctermbg=0
hi TabLineFill ctermbg=0
hi TabLineSel ctermfg=7 ctermbg=8 cterm=bold

" Diff highlighting
hi DiffAdd ctermfg=2 ctermbg=0 cterm=bold
hi DiffChange ctermfg=3 ctermbg=0
hi DiffDelete ctermfg=1 ctermbg=0 cterm=bold
hi DiffText ctermfg=11 ctermbg=0 cterm=bold

" Git gutter
hi GitGutterAdd ctermfg=2
hi GitGutterChange ctermfg=3
hi GitGutterDelete ctermfg=1
hi GitGutterChangeDelete ctermfg=5

" Error and warning
hi Error ctermfg=9 ctermbg=0 cterm=bold
hi Warning ctermfg=11 ctermbg=0 cterm=bold
hi ErrorMsg ctermfg=9 cterm=bold
hi WarningMsg ctermfg=11 cterm=bold
hi Question ctermfg=2 cterm=bold
hi MoreMsg ctermfg=2 cterm=bold

" Folding
hi Folded ctermfg=8 ctermbg=0 cterm=italic
hi FoldColumn ctermfg=8 ctermbg=0

" Spelling
hi SpellBad ctermfg=1 cterm=underline
hi SpellCap ctermfg=4 cterm=underline
hi SpellLocal ctermfg=6 cterm=underline
hi SpellRare ctermfg=5 cterm=underline

" File explorer and tree colors
hi Directory ctermfg=4 cterm=bold
hi NvimTreeFolderName ctermfg=4
hi NvimTreeFolderIcon ctermfg=4
hi NvimTreeOpenedFolderName ctermfg=12 cterm=bold
hi NvimTreeFileName ctermfg=7
hi NvimTreeExecFile ctermfg=2 cterm=bold
hi NvimTreeSpecialFile ctermfg=5 cterm=bold
hi NvimTreeImageFile ctermfg=6
hi NvimTreeMarkdownFile ctermfg=1
hi NvimTreeIndentMarker ctermfg=8

" Neo-tree colors
hi NeoTreeDirectoryName ctermfg=4
hi NeoTreeDirectoryIcon ctermfg=4
hi NeoTreeFileName ctermfg=7
hi NeoTreeFileIcon ctermfg=6
hi NeoTreeModified ctermfg=3
hi NeoTreeGitAdded ctermfg=2
hi NeoTreeGitDeleted ctermfg=1
hi NeoTreeGitModified ctermfg=3
hi NeoTreeGitUntracked ctermfg=8

" Telescope colors
hi TelescopeSelection ctermfg=7 ctermbg=8 cterm=bold
hi TelescopeSelectionCaret ctermfg=1 cterm=bold
hi TelescopeMultiSelection ctermfg=2 cterm=bold
hi TelescopeNormal ctermfg=7
hi TelescopeBorder ctermfg=8
hi TelescopePromptBorder ctermfg=4
hi TelescopeResultsBorder ctermfg=8
hi TelescopePreviewBorder ctermfg=8
hi TelescopeTitle ctermfg=7 cterm=bold
hi TelescopePromptTitle ctermfg=4 cterm=bold
hi TelescopeResultsTitle ctermfg=2 cterm=bold
hi TelescopePreviewTitle ctermfg=6 cterm=bold

" LSP and diagnostic colors
hi DiagnosticError ctermfg=1
hi DiagnosticWarn ctermfg=3
hi DiagnosticInfo ctermfg=4
hi DiagnosticHint ctermfg=8
hi DiagnosticUnderlineError cterm=underline
hi DiagnosticUnderlineWarn cterm=underline
hi DiagnosticUnderlineInfo cterm=underline
hi DiagnosticUnderlineHint cterm=underline

" LSP semantic highlighting - treesitter
hi @variable ctermfg=7
hi @variable.builtin ctermfg=5 cterm=italic
hi @variable.parameter ctermfg=7 cterm=italic
hi @constant ctermfg=5 cterm=bold
hi @constant.builtin ctermfg=5 cterm=bold,italic
hi @constant.macro ctermfg=13 cterm=bold
hi @string ctermfg=2
hi @string.escape ctermfg=10 cterm=bold
hi @string.special ctermfg=6
hi @character ctermfg=10
hi @number ctermfg=6
hi @boolean ctermfg=1 cterm=bold
hi @float ctermfg=6
hi @function ctermfg=1 cterm=bold
hi @function.builtin ctermfg=1 cterm=bold,italic
hi @function.macro ctermfg=9 cterm=bold
hi @method ctermfg=1
hi @constructor ctermfg=3 cterm=bold
hi @parameter ctermfg=7 cterm=italic
hi @keyword ctermfg=4 cterm=bold
hi @keyword.function ctermfg=4 cterm=italic
hi @keyword.operator ctermfg=4
hi @keyword.return ctermfg=4 cterm=bold
hi @conditional ctermfg=4
hi @repeat ctermfg=4
hi @label ctermfg=4
hi @operator ctermfg=7
hi @exception ctermfg=1 cterm=bold
hi @type ctermfg=3 cterm=bold
hi @type.builtin ctermfg=3 cterm=bold,italic
hi @type.definition ctermfg=3
hi @storageclass ctermfg=3
hi @structure ctermfg=3
hi @namespace ctermfg=3 cterm=italic
hi @include ctermfg=13 cterm=bold
hi @preproc ctermfg=13
hi @debug ctermfg=9
hi @tag ctermfg=1
hi @tag.attribute ctermfg=6
hi @tag.delimiter ctermfg=7
hi @comment ctermfg=8 cterm=italic
hi @comment.documentation ctermfg=11 cterm=italic

" Treesitter context
hi TreesitterContext ctermbg=8
hi TreesitterContextLineNumber ctermfg=7 cterm=bold
