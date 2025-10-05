-- Markdown highlights for Pixel colorscheme

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors, config)
	config = config or {}
	local italic = config.disable_italics and "NONE" or "italic"

	-- Markdown headings
	hi("markdownHeadingDelimiter", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH1", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH2", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH3", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH4", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH5", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH6", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH1Delimiter", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH2Delimiter", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH3Delimiter", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH4Delimiter", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH5Delimiter", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownH6Delimiter", { ctermfg = colors.blue, cterm = "bold" })

	-- Markdown text formatting
	hi("markdownBold", { ctermfg = colors.white, cterm = "bold" })
	hi("markdownBoldDelimiter", { ctermfg = colors.white, cterm = "bold" })
	hi("markdownItalic", { ctermfg = colors.white, cterm = italic })
	hi("markdownItalicDelimiter", { ctermfg = colors.white, cterm = italic })
	hi("markdownBoldItalic", { ctermfg = colors.white, cterm = config.disable_italics and "bold" or "bold,italic" })
	hi("markdownBoldItalicDelimiter", { ctermfg = colors.white, cterm = config.disable_italics and "bold" or "bold,italic" })
	hi("markdownStrike", { ctermfg = colors.white, cterm = "strikethrough" })
	hi("markdownStrikeDelimiter", { ctermfg = colors.white, cterm = "strikethrough" })

	-- Markdown code
	hi("markdownCode", { ctermfg = colors.green })
	hi("markdownCodeBlock", { ctermfg = colors.green })
	hi("markdownCodeDelimiter", { ctermfg = colors.white })
	hi("markdownCodeBlockDelimiter", { ctermfg = colors.white })

	-- Markdown links
	hi("markdownLink", { ctermfg = colors.br_green, cterm = "underline" })
	hi("markdownLinkText", { ctermfg = colors.br_green, cterm = "underline" })
	hi("markdownLinkDelimiter", { ctermfg = colors.white })
	hi("markdownLinkTextDelimiter", { ctermfg = colors.white })
	hi("markdownUrl", { ctermfg = colors.br_green, cterm = "underline" })
	hi("markdownUrlDelimiter", { ctermfg = colors.white })
	hi("markdownUrlTitle", { ctermfg = colors.green })
	hi("markdownUrlTitleDelimiter", { ctermfg = colors.white })
	hi("markdownAutomaticLink", { ctermfg = colors.br_green, cterm = "underline" })
	hi("markdownId", { ctermfg = colors.cyan })
	hi("markdownIdDelimiter", { ctermfg = colors.white })
	hi("markdownIdDeclaration", { ctermfg = colors.cyan })
	hi("markdownLinkReference", { ctermfg = colors.br_green })

	-- Markdown lists
	hi("markdownListMarker", { ctermfg = colors.blue })
	hi("markdownOrderedListMarker", { ctermfg = colors.blue })
	hi("markdownRule", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownCheckboxChecked", { ctermfg = colors.green, cterm = "bold" })
	hi("markdownCheckboxUnchecked", { ctermfg = colors.br_black, cterm = "bold" })

	-- Markdown quotes
	hi("markdownBlockquote", { ctermfg = colors.br_black, cterm = italic })
	hi("markdownBlockquoteDelimiter", { ctermfg = colors.br_black, cterm = italic })

	-- Markdown tables
	hi("markdownTable", { ctermfg = colors.white })
	hi("markdownTableDelimiter", { ctermfg = colors.white })
	hi("markdownTableHead", { ctermfg = colors.blue, cterm = "bold" })
	hi("markdownTableHeadDelimiter", { ctermfg = colors.white, cterm = "bold" })

	-- Markdown escape sequences
	hi("markdownEscape", { ctermfg = colors.br_cyan })
	hi("markdownError", { ctermfg = colors.br_red })

	-- Markdown math
	hi("markdownMath", { ctermfg = colors.cyan })
	hi("markdownMathDelimiter", { ctermfg = colors.white })
	hi("markdownMathBlock", { ctermfg = colors.cyan })
	hi("markdownMathBlockDelimiter", { ctermfg = colors.white })

	-- Markdown YAML frontmatter
	hi("markdownYAMLHeader", { ctermfg = colors.br_black })
	hi("markdownYAMLKeyword", { ctermfg = colors.cyan })
	hi("markdownYAMLString", { ctermfg = colors.green })

	-- Markdown HTML
	hi("markdownHTML", { ctermfg = colors.blue })
	hi("markdownHTMLTag", { ctermfg = colors.blue })
	hi("markdownHTMLEndTag", { ctermfg = colors.blue })
	hi("markdownHTMLArg", { ctermfg = colors.cyan })
	hi("markdownHTMLValue", { ctermfg = colors.green })
	hi("markdownHTMLTitle", { ctermfg = colors.green })
	hi("markdownHTMLComment", { ctermfg = colors.br_black, cterm = italic })

	-- Markdown line break
	hi("markdownLineBreak", { ctermfg = colors.black, ctermbg = colors.br_black })

	-- Treesitter markdown highlights
	hi("@markup.heading.1.markdown", { ctermfg = colors.blue, cterm = "bold" })
	hi("@markup.heading.2.markdown", { ctermfg = colors.blue, cterm = "bold" })
	hi("@markup.heading.3.markdown", { ctermfg = colors.blue, cterm = "bold" })
	hi("@markup.heading.4.markdown", { ctermfg = colors.blue, cterm = "bold" })
	hi("@markup.heading.5.markdown", { ctermfg = colors.blue, cterm = "bold" })
	hi("@markup.heading.6.markdown", { ctermfg = colors.blue, cterm = "bold" })
	hi("@markup.heading.1.marker.markdown", { ctermfg = colors.blue, cterm = "bold" })
	hi("@markup.heading.2.marker.markdown", { ctermfg = colors.blue, cterm = "bold" })
	hi("@markup.heading.3.marker.markdown", { ctermfg = colors.blue, cterm = "bold" })
	hi("@markup.heading.4.marker.markdown", { ctermfg = colors.blue, cterm = "bold" })
	hi("@markup.heading.5.marker.markdown", { ctermfg = colors.blue, cterm = "bold" })
	hi("@markup.heading.6.marker.markdown", { ctermfg = colors.blue, cterm = "bold" })

	hi("@markup.strong.markdown_inline", { ctermfg = colors.white, cterm = "bold" })
	hi("@markup.italic.markdown_inline", { ctermfg = colors.white, cterm = italic })
	hi("@markup.strikethrough.markdown_inline", { ctermfg = colors.white, cterm = "strikethrough" })
	hi("@markup.raw.markdown_inline", { ctermfg = colors.green })
	hi("@markup.raw.block.markdown", { ctermfg = colors.green })
	hi("@markup.link.markdown_inline", { ctermfg = colors.br_green, cterm = "underline" })
	hi("@markup.link.url.markdown_inline", { ctermfg = colors.br_green, cterm = "underline" })
	hi("@markup.link.label.markdown_inline", { ctermfg = colors.cyan })
	hi("@markup.list.markdown", { ctermfg = colors.blue })
	hi("@markup.list.checked.markdown", { ctermfg = colors.green, cterm = "bold" })
	hi("@markup.list.unchecked.markdown", { ctermfg = colors.br_black, cterm = "bold" })
	hi("@markup.quote.markdown", { ctermfg = colors.br_black, cterm = italic })

	-- Markdown plugins
	hi("MarkdownError", { ctermfg = colors.br_red })
	hi("MarkdownWarning", { ctermfg = colors.br_yellow })
	hi("MarkdownInfo", { ctermfg = colors.br_blue })
	hi("MarkdownHint", { ctermfg = colors.br_cyan })

	-- Render markdown
	hi("RenderMarkdownH1", { ctermfg = colors.blue, cterm = "bold" })
	hi("RenderMarkdownH2", { ctermfg = colors.blue, cterm = "bold" })
	hi("RenderMarkdownH3", { ctermfg = colors.blue, cterm = "bold" })
	hi("RenderMarkdownH4", { ctermfg = colors.blue, cterm = "bold" })
	hi("RenderMarkdownH5", { ctermfg = colors.blue, cterm = "bold" })
	hi("RenderMarkdownH6", { ctermfg = colors.blue, cterm = "bold" })
	hi("RenderMarkdownCode", { ctermfg = colors.green, ctermbg = colors.br_black })
	hi("RenderMarkdownCodeInline", { ctermfg = colors.green, ctermbg = colors.br_black })
	hi("RenderMarkdownBullet", { ctermfg = colors.blue })
	hi("RenderMarkdownTableHead", { ctermfg = colors.blue, cterm = "bold" })
	hi("RenderMarkdownTableRow", { ctermfg = colors.white })
	hi("RenderMarkdownSuccess", { ctermfg = colors.green })
	hi("RenderMarkdownInfo", { ctermfg = colors.br_blue })
	hi("RenderMarkdownHint", { ctermfg = colors.br_cyan })
	hi("RenderMarkdownWarn", { ctermfg = colors.br_yellow })
	hi("RenderMarkdownError", { ctermfg = colors.br_red })
	hi("RenderMarkdownQuote", { ctermfg = colors.br_black, cterm = italic })
	hi("RenderMarkdownLink", { ctermfg = colors.br_green, cterm = "underline" })
	hi("RenderMarkdownImage", { ctermfg = colors.red })
end

return M
