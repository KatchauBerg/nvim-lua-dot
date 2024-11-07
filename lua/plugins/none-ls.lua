return{
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function ()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {

          --formatings
          null_ls.builtins.formatting.stylua,

          --diagnostics
          null_ls.builtins.diagnostics.eslint_d,

          --completion
          null_ls.builtins.completion.spell,
        },
      })

      vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format,{})

    end
  }
}
