-- ~/.config/nvim/lua/plugins/catppuccin.lua
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, 
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- The standard dark theme
        transparent_background = false, -- Change to true if you want your wallpaper to show through
        term_colors = true,
        styles = {
          comments = { "italic" }, -- Italics make code look 10x better
          conditionals = { "italic" },
        },
        -- INTEGRATIONS (The Magic Part)
        -- This ensures every plugin looks like part of a unified UI
        integrations = {
          cmp = true,          -- Styles the autocomplete menu
          gitsigns = true,     -- Styles the git gutter
          nvimtree = true,     
          telescope = true,    -- Styles the search window
          mason = true,        -- Styles the installer window
          dashboard = true,    -- Styles your start screen
          which_key = true,
          
          -- Fixes the file explorer look
          neotree = true,
          
          -- Styles the brackets
          rainbow_delimiters = true,
          
          -- Styles the indentation lines
          indent_blankline = {
            enabled = true,
            scope_color = "lavender", 
            colored_indent_levels = false,
          },
          
          -- Styles the LSP errors (underlines vs squiggles)
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
        },
      })

      -- Actually load the theme
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
