return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- Conservative rendering: keep Markdown syntax visible while editing.
      -- Render in normal/command/terminal modes, not insert mode.
      render_modes = { "n", "c", "t" },
    },
    keys = {
      {
        "<leader>um",
        "<cmd>RenderMarkdown toggle<cr>",
        ft = "markdown",
        desc = "Toggle Render Markdown",
      },
    },
  },
}
