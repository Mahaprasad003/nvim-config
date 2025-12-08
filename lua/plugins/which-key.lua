return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- 1. Appearance
      preset = "helix", -- Options: "classic", "modern", "helix"
      delay = function(ctx)
        return ctx.plugin and 0 or 200 -- 200ms delay before showing the menu
      end,
      
      -- 2. Visuals
      win = {
        border = "rounded", -- Gives it that nice floating window look
        padding = { 1, 2 }, -- Add some breathing room
        title = true,       -- Show the title of the group (e.g., "+file")
      },
      
      -- 3. Icons (requires a Nerd Font, which you have)
      icons = {
        breadcrumb = "»", -- Symbol used in the command line area
        separator = "➜", -- Symbol used between a key and its label
        group = "+",      -- Symbol prepended to a group
      },

      -- 4. The Mappings (Labels for your groups)
      -- In v3, we use the "spec" to name our groups
      spec = {
        { "<leader>f", group = "Find (Telescope)" },
        { "<leader>g", group = "Git" },
        { "<leader>c", group = "Code Actions" },
        { "<leader>q", group = "Session / Quit" },
        { "<leader>v", group = "Venv / Python" },
        { "<leader>1", icon = "", desc = "Server Terminal" }, -- Custom icon for your terminals
        { "<leader>2", icon = "", desc = "Test Terminal" },
        
        -- Hide certain internal mappings from the menu to keep it clean
        { "<leader>b", hidden = true }, 
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
}
