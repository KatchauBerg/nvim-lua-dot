return {
  -- Plugin principal (vim-dadbod)
  {
    "tpope/vim-dadbod",
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion", -- <<< Declarado como dependência
    },
    cmd = { "DB", "DBUI" }, -- Carregamento lento

    -- Configurações devem estar DENTRO desta tabela!
    config = function()
      -- Configuração da UI
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_show_database_icon = 1

      -- Atalhos
      vim.keymap.set("n", "<leader>db", "<cmd>DBUI<cr>", { desc = "Abrir Interface do Banco" })
      vim.keymap.set("n", "<leader>dq", "<cmd>DB<cr>", { desc = "Executar Query" })

      -- Configuração do autocompletion (OPCIONAL - só se você usa nvim-cmp)
      if pcall(require, "cmp") then
        require("cmp").setup({
          sources = {
            { name = "vim-dadbod-completion" },
          },
        })
      end
    end
  }
}
