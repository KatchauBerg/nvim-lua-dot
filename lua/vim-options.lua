vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set completeopt=noinsert,menuone,noselect")
vim.cmd("set termguicolors")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set smarttab")
vim.cmd("set smartcase")
vim.cmd("set splitbelow splitright")
vim.cmd("set wildmenu")
vim.cmd("set cursorline")
vim.cmd("set number")
vim.cmd("set relativenumber")

vim.g.mapleader = " "

-- vim.api.nvim_create_user_command("SFTPUpload", function()
--   local file = vim.fn.expand("%:p") -- Arquivo atual
--   vim.cmd(
--     "!scp -i ~/trabalho/fcserver_private_key.ppk " ..
--     file ..
--     " opc@paginas2.shoppingdeprecos.com.br:/public_html/"
--   )
-- end, {})
--
-- vim.keymap.set("n", "<leader>ftp", ":SFTPUpload<CR>", { desc = "Upload via SCP" })
