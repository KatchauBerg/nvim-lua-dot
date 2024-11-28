return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    end

  },
  {
    {
      'nvim-telescope/telescope-ui-select.nvim',

      config = function ()
        -- This is your opts table
        require("telescope").setup {
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown {
              }
            }
          }
        }
        require("telescope").load_extension("ui-select")

        -- vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
        vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
        -- vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
        vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
        vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")
        vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>")

      end
    },
  }
}

