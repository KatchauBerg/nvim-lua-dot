return{
  {
    "williamboman/mason.nvim",
    config = function ()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function ()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "tsserver"}
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function ()
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      lspconfig.lua_ls.setup({

        capabilities = capabilities
      })
      lspconfig.tsserver.setup({

        capabilities = capabilities
      })
      lspconfig.html.setup({

        capabilities = capabilities
      })


      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({"n"}, "<leader>ca", vim.lsp.buf.code_action, {})

    end
  }
}
