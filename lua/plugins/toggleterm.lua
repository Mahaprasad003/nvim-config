return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 15, -- Height of the terminal
        open_mapping = [[<C-\>]], -- The Key to Toggle (Ctrl + Backslash)
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true, -- Check specific mapping below
        persist_size = true,
        direction = "horizontal", -- Options: 'vertical' | 'horizontal' | 'tab' | 'float'
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
          border = "curved",
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          },
        },
      })

      -- FUNCTION to easily toggle between multiple terminals
      -- This allows you to press <leader>th for horizontal or <leader>tf for float
      local Terminal = require("toggleterm.terminal").Terminal
      
      -- Example: A dedicated Python terminal
      local python_term = Terminal:new({ cmd = "python3", hidden = true })

      function _PYTHON_TOGGLE()
        python_term:toggle()
      end

      -- Easy navigation inside terminal mode
      function _G.set_terminal_keymaps()
        local opts = {buffer = 0}
        -- Press Esc to go to Normal mode (so you can navigate windows)
        vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts) -- standard vim escape
        vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      end

      -- Apply keymaps only when opening a terminal
      vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
    end,
  }
}
