return { 
  "catppuccin/nvim", 
  lazy = false, 
  name = "catppuccin", 
  priority = 1000,
  config = function ()
    vim.cmd.colorscheme "catppuccin"
  end
}
  -- name = "catppuccin", 
  -- priority = 1000,
  -- config = {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   branch = "v3.x",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  --     "MunifTanjim/nui.nvim",
  --     -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  --   }
  -- }
