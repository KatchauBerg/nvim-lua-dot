return {
  {
    'stevearc/oil.nvim',
    -- Optional dependencies
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons

    config = function()
      local oil = require("oil")
      oil.setup({

        ssh = {
          border = "rounded",
        },

        git = {
          -- Return true to automatically git add/mv/rm files
          add = function(path)
            return false
          end,
          mv = function(src_path, dest_path)
            return false
          end,
          rm = function(path)
            return false
          end,
        },

        sort = {
          -- sort order can be "asc" or "desc"
          -- see :help oil-columns to see which columns are sortable
          { "type", "asc" },
          { "name", "asc" },
        },

        columns = {
          "icon",
          -- "permissions",
          -- "size",
          -- "mtime",
        },

        default_file_explorer = true,
        case_insensitive = true,

        vim.keymap.set("n", "<leader>ol", "<CMD>Oil<CR>", { desc = "Open parent directory" })
      })
    end
  }
}
