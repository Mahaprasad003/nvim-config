return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      require("ibl").setup({
        -- indent = { char = "│" }, -- The character to use
        scope = { enabled = true }, -- Highlight the current code block
      })
    end,
  },
}
