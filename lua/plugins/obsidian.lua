return{
  {
    "epwalsh/obsidian.nvim",
    config = function ()

      require('obsidian').setup ({
        workspaces = {
          {
            name = "Anotações",
            path = "/mnt/c/Users/Fabrica de Codigos/Documents/Obsidian Vault",
          },
        },
        -- keymaps
        mappings = {
          -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
          ["<leader>ogf"] = {
            action = function()
              return require("obsidian").util.gf_passthrough()
            end,
            opts = { noremap = false, expr = true, buffer = true },
          },
          -- Toggle check-boxes.
          ["<leader>och"] = {
            action = function()
              return require("obsidian").util.toggle_checkbox()
            end,
            opts = { buffer = true },
          },
          -- Smart action depending on context, either follow link or toggle checkbox.
          ["<cr>"] = {
            action = function()
              return require("obsidian").util.smart_action()
            end,
            opts = { buffer = true, expr = true },
          }
        },


      })
    end,
  },
}
