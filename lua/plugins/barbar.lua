return {

  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    -- init = function() vim.g.barbar_auto_setup = false end,
    config = function ()
      -- local barbar = require('barbar')
      
      vim.keymap.set('n', '<leader>.', ':BufferNext<CR>', {})
      vim.keymap.set('n', '<leader>,',':BufferPrevious<CR>', {})
      vim.keymap.set('n', '<leader><', '<Cmd>BufferMovePrevious<CR>', opts)
      vim.keymap.set('n', '<leader>>', '<Cmd>BufferMoveNext<CR>', opts)

    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  }
}
