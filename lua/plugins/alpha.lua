return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- 1. The Logo
      dashboard.section.header.val = {
        [[                               __                ]],
        [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
        [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
        [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
        [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
        [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
      }

      -- 2. The Buttons
      dashboard.section.buttons.val = {
        -- Core Actions
        dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
        
        -- WORKFLOW SHORTCUTS (The new part)
        -- Press 's' to immediately open Terminal 1 (Server)
        dashboard.button("s", "  Open Server Term", ":1ToggleTerm<CR>"),
        -- Press 't' to immediately open Terminal 2 (Test)
        dashboard.button("t", "  Open Test Term", ":2ToggleTerm<CR>"),

        -- System Actions
        dashboard.button("c", "  Configuration", ":cd ~/.config/nvim/ | edit init.lua<CR>"),
        dashboard.button("u", "  Update Plugins", ":Lazy sync<CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
      }

      -- Layout styling
      dashboard.section.header.opts.hl = "Include"
      dashboard.section.buttons.opts.hl = "Keyword"

      -- Footer
      dashboard.section.footer.val = "Neovim: Do it faster."
      dashboard.section.footer.opts.hl = "Type"

      dashboard.opts.layout[1].val = 8 -- Top padding

      alpha.setup(dashboard.config)
    end,
  },
}
