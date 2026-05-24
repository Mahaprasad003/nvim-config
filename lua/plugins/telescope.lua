return {
  {'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Find Files' })
    vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'Search Text' })
    vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Find Buffers' })
    vim.keymap.set('n', '<leader>?', builtin.keymaps, { desc = 'Find Keymaps' })
    end
  },

  {'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            -- even more opts
          }
        }
      }
    }
    require("telescope").load_extension("ui-select")
    end
}
  } 
