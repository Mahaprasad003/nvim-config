return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      local mason_lspconfig = require("mason-lspconfig")
      local lspconfig = require("lspconfig")
      
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      mason_lspconfig.setup({
        -- 1. ADD "ruff" HERE
        ensure_installed = { "lua_ls", "pyright", "ruff" },
        automatic_installation = true,
        handlers = {
          function(server_name)
            lspconfig[server_name].setup({
              capabilities = capabilities
            })
          end,

          -- 2. RUFF SETUP
          ["ruff"] = function()
            lspconfig.ruff.setup({
              -- Disable Ruff's hover in favor of Pyright
              capabilities = capabilities,
              on_attach = function(client, bufnr)
                client.server_capabilities.hoverProvider = false
              end,
            })
          end,

          -- 3. PYRIGHT SETUP
          ["pyright"] = function()
            lspconfig.pyright.setup({
              capabilities = capabilities,
              settings = {
                python = {
                  analysis = { typeCheckingMode = "basic" },
                  reportUnusedImport = "none",
                  reportUnusedVariable = "none",
                },
              },
              -- Disable Pyright's formatting in favor of Ruff
              on_attach = function(client, bufnr)
                client.server_capabilities.documentFormattingProvider = false
              end,
            })
          end,

          ["lua_ls"] = function()
            lspconfig.lua_ls.setup({
              capabilities = capabilities,
              settings = {
                Lua = {
                  diagnostics = { globals = { "vim" } },
                },
              },
            })
          end,
        },
      })

      -- DIAGNOSTICS CONFIG
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })

      local signs = { Error = "✘", Warn = "", Hint = "⚑", Info = "" }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      -- KEYMAPS
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          local opts = { buffer = ev.buf, silent = true }
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          -- This trigger format. Since Pyright formatting is disabled, Ruff will pick it up.
          vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, opts)
        end,
      })
    end,
  },
}
