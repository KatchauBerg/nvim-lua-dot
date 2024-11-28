return{
  { "anuvyklack/windows.nvim",
    requires = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim"
    },
    config = function()
      vim.o.winwidth = 10
      vim.o.winminwidth = 10
      vim.o.equalalways = false
      require('windows').setup()
      vim.keymap.set('n', '<Leader>z', ':WindowsMaximize', {})
      vim.keymap.set('n', '<Leader>_', ':WindowsMaximizeVertically', {})
      vim.keymap.set('n', '<Leader>|', ':WindowsMaximizeHorizontally', {})
      vim.keymap.set('n', '<Leader>=', ':WindowsEqualize', {})
    end
  }
}
