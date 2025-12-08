return {
  "linux-cultist/venv-selector.nvim",
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
  config = function()
      require("venv-selector").setup({
          -- This tries to find the venv automatically
          name = {"venv", ".venv", "env"}, 
          -- Auto-select the venv if you opened neovim inside a project with one
          auto_refresh = true 
      })
  end,
  event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  keys = {
    -- Keymap to manually pick a venv
    { "<leader>vs", "<cmd>VenvSelect<cr>" },
  },
}
