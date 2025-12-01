return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- 1. Setup Neo-tree with specific icon settings
    require("neo-tree").setup({
      close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change type
            added     = "✚", -- or "A", "+"
            modified  = "", -- or "M", "●"
            deleted   = "✖", -- or "D", "x"
            renamed   = "󰁕", -- or "R", "->", ""
            -- Status type
            untracked = "", -- or "U", "?"
            ignored   = "", -- or "I", "◌"
            unstaged  = "󰄱", -- or "U", "✗"
            staged    = "", -- or "S", "✓"
            conflict  = "", -- or "C", "!"
          }
        },
      },
      filesystem = {
        filtered_items = {
          visible = true, -- This makes hidden files (like .gitignore) visible by default
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    })

    -- 2. Set the keymap (Keeping your existing shortcut)
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", { desc = "Toggle Neo-tree" })
  end,
}
