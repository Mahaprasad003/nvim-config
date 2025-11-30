return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true, -- This automatically runs require("nvim-autopairs").setup()
    -- Optional: integration with nvim-cmp
    -- This allows you to press <CR> (Enter) to confirm autocomplete
    -- and have autopairs handle the creation of () automatically.
  },
}
