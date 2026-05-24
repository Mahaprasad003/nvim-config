return {
  {
    "gbprod/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nord").setup({
        -- 1. General Settings
        transparent = true, -- Set to true if you want the wallpaper to show through
        terminal_colors = true, 
        diff = { mode = "bg" }, -- "bg" or "fg" for git diffs
        borders = true, -- Adds borders to floating windows (matches your sophisticated setup)
        errors = { mode = "bg" }, -- Highlights the background of error lines

        -- 2. Styles (Matching your Italic preferences)
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          -- Ensure the cursor line is visible but subtle
          cursorline = "dark", 
        },

        -- 3. INTEGRATIONS (Mirroring your Catppuccin setup)
        -- gbprod/nord handles many of these automatically, but we enable specific ones here
        on_highlights = function(highlights, colors)
            -- Custom tweaks can go here if something looks "off"
        end,
      })

      -- Actually load the theme
      vim.cmd.colorscheme("nord")
    end,
  },
}
