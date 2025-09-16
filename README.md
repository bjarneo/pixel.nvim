# Pixel.nvim

A dynamic Neovim colorscheme that adapts to your terminal's color palette, inspired by the bat command-line tool's approach to color theming.

## Philosophy

Unlike traditional Neovim colorschemes that use hardcoded hex colors, Pixel.nvim uses only ANSI terminal colors (0-15). This means the theme automatically adapts to whatever color scheme you have configured in your terminal emulator - just like how `bat` displays syntax highlighting that matches your terminal's aesthetic.

## Features

- **Dynamic Color Adaptation**: Automatically uses your terminal's color palette
- **No Hardcoded Colors**: Uses only ANSI color codes 0-15
- **Terminal Agnostic**: Works with any terminal emulator (Alacritty, iTerm2, Kitty, etc.)
- **Lightweight**: Minimal overhead with no GUI color definitions
- **Consistent**: Your Neovim theme will always match your terminal aesthetic

## State
This project is currently in the preliminary stage, and adjustments are expected to be made.

## How It Works

### ANSI Color Mapping

Pixel.nvim maps syntax elements to ANSI colors following this scheme:

- **Color 0 (Black)**: Background
- **Color 1 (Red)**: Errors, functions, booleans
- **Color 2 (Green)**: Strings, additions
- **Color 3 (Yellow)**: Types, warnings, classes
- **Color 4 (Blue)**: Keywords, statements
- **Color 5 (Magenta)**: Constants, variables
- **Color 6 (Cyan)**: Numbers, special characters
- **Color 7 (White)**: Normal text, identifiers
- **Color 8 (Bright Black)**: Comments, hints
- **Color 9-15 (Bright Colors)**: Enhanced versions of above

### Technical Implementation

The colorscheme works by:

1. **Disabling `termguicolors`**: Forces Neovim to use terminal ANSI colors instead of 24-bit GUI colors
2. **Using only `ctermfg`/`ctermbg`**: All highlight groups use terminal color indices
3. **No GUI definitions**: No `guifg`/`guibg` attributes that would override terminal colors

## Requirements

- **Neovim 0.5+** (Lua support required)
- Terminal emulator with ANSI color support

## Installation

### Using lazy.nvim

```lua
{
  "bjarneo/pixel.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("pixel")
  end,
}
```

### Using packer.nvim

```lua
use {
  "bjarneo/pixel.nvim",
  config = function()
    vim.cmd.colorscheme("pixel")
  end,
}
```

### Using vim-plug

```vim
Plug 'bjarneo/pixel.nvim'
```

Then in your `init.lua`:

```lua
vim.cmd.colorscheme("pixel")
```

## Usage

### Basic Usage

Simply set the colorscheme in your Neovim configuration:

```lua
-- init.lua
vim.cmd.colorscheme("pixel")
```

### Terminal Configuration

The beauty of Pixel.nvim is that you configure colors in your terminal, not in Neovim:

#### Alacritty Example

```yaml
# ~/.config/alacritty/alacritty.yml
colors:
  primary:
    background: '#1e1e2e'
    foreground: '#cdd6f4'

  normal:
    black:   '#45475a'
    red:     '#f38ba8'
    green:   '#a6e3a1'
    yellow:  '#f9e2af'
    blue:    '#89b4fa'
    magenta: '#f5c2e7'
    cyan:    '#94e2d5'
    white:   '#bac2de'

  bright:
    black:   '#585b70'
    red:     '#f38ba8'
    green:   '#a6e3a1'
    yellow:  '#f9e2af'
    blue:    '#89b4fa'
    magenta: '#f5c2e7'
    cyan:    '#94e2d5'
    white:   '#a6adc8'
```

#### iTerm2 Example

1. Open iTerm2 Preferences
2. Go to Profiles → Colors
3. Configure your ANSI colors
4. Pixel.nvim will automatically use these colors

### Switching Themes

Want to change your Neovim colors? Just change your terminal's color scheme:

```bash
# Switch terminal theme
# Pixel.nvim automatically adapts - no Neovim restart needed!
```

## Supported Plugins

Pixel.nvim includes highlight groups for popular Neovim plugins:

### Core Language Support
- **LSP**: Diagnostic colors, semantic highlighting, hover windows
- **Treesitter**: All `@` capture groups for syntax highlighting
- **Mason**: Package manager interface

### File Management & Navigation
- **Telescope**: Fuzzy finder interface, previews, selections
- **NvimTree**: File explorer with git integration
- **Neo-tree**: Modern file explorer with enhanced features

### Git Integration
- **GitSigns**: Git diff indicators in sign column
- **Git**: Core git highlighting and diff views
- **Diffview**: Side-by-side diff viewer

### Code Enhancement
- **Flash**: Jump/search highlighting
- **Trouble**: Diagnostics and quickfix lists
- **WhichKey**: Keybinding popup interface
- **Indent Blankline**: Indentation guides
- **Comment**: Comment highlighting enhancements

### UI & Notifications
- **Noice**: Enhanced UI components and notifications
- **Snacks**: UI utilities and components
- **Fidget**: LSP progress notifications
- **Lualine**: Status line theme included at `lua/lualine/themes/pixel.lua`

### Development Tools
- **Blink**: Completion menu styling
- **nvim-dap**: Debugger interface
- **Conform**: Code formatting integration
- **Lint**: Linting integration
- **Mini**: Mini.nvim modules support
- **Markdown**: Enhanced markdown highlighting

## Comparison with Traditional Themes

| Feature | Traditional Themes | Pixel.nvim |
|---------|-------------------|------------|
| Color Definition | Hardcoded hex values | Terminal ANSI colors |
| Customization | Edit colorscheme file | Change terminal config |
| Consistency | Varies per theme | Always matches terminal |
| File Size | Large (all color definitions) | Small (ANSI references only) |
| Portability | Theme-specific | Universal across terminals |

## Examples

## Philosophy: Why Terminal Colors?

1. **Consistency**: Your entire terminal environment uses the same color palette
2. **Simplicity**: One place to configure colors for everything
3. **Flexibility**: Easy to experiment with different themes
4. **Performance**: No overhead from color calculations
5. **Universality**: Works the same way across all terminal applications

## Troubleshooting

### Colors appear wrong

Make sure your terminal supports 256 colors and ANSI colors are properly configured:

```bash
# Test ANSI colors in your terminal
for i in {0..15}; do echo -en "\e[48;5;${i}m  \e[0m"; done; echo
```

### Theme not updating

Ensure `termguicolors` is disabled:

```lua
-- In your init.lua, before setting colorscheme
vim.opt.termguicolors = false
vim.cmd.colorscheme("pixel")
```

### Need GUI colors

If you need to use GUI colors for some reason, you can re-enable them after setting the colorscheme:

```lua
vim.cmd.colorscheme("pixel")
vim.opt.termguicolors = true  -- Only if absolutely necessary
```

## Contributing

Contributions are welcome! Since this theme uses ANSI colors, focus on:

- Adding support for new plugins
- Improving ANSI color mappings
- Documentation improvements
- Bug fixes

## License

MIT License.

## Author

Follow [@iamdothash](https://x.com/iamdothash) on X for updates and more projects.

## Inspiration

- [bat](https://github.com/sharkdp/bat) - Command-line tool that inspired the ANSI color approach
- Terminal color schemes that prioritize consistency across applications
