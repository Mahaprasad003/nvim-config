return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "helix",
      delay = function(ctx)
        return ctx.plugin and 0 or 200
      end,
      win = {
        border = "rounded",
        padding = { 1, 2 },
        title = true,
      },
      icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
      },
      spec = {
        { "<leader>b", desc = "Find Buffers" },
        { "<leader>c", desc = "Close Current File" },
        { "<leader>e", desc = "Explorer" },
        { "<leader>f", desc = "Find Files" },
        { "<leader>/", desc = "Search Text" },
        { "<leader>t", group = "Terminal" },
        { "<leader>u", group = "UI / Toggles" },
        { "<leader>g", group = "Git" },
        { "<leader>V", desc = "Select Python Venv" },
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps",
      },
    },
  },
}
