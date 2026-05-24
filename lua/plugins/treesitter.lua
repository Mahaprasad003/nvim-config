return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local parsers = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        "python",
      }

      -- nvim-treesitter `main` is a rewrite. Lazy.nvim can sometimes keep the
      -- old master module cached during the branch switch, so load the fresh
      -- module once before using the new install API.
      package.loaded["nvim-treesitter"] = nil
      local treesitter = require("nvim-treesitter")

      treesitter.setup()
      treesitter.install(parsers)

      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true }),
        pattern = parsers,
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)

          -- Tree-sitter indentation is still experimental. Keep it off for
          -- Markdown, where injections are the part most likely to be fragile.
          if args.match ~= "markdown" and args.match ~= "markdown_inline" then
            vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
    end,
  },
}
