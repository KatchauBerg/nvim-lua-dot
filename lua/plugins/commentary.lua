return {
  "tpope/vim-commentary",
  config = function()
    -- Define comentário para PHP como '//'
    vim.cmd([[
      autocmd FileType php setlocal commentstring=//\ %s
    ]])
  end
}
