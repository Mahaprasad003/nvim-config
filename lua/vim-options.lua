vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>w", ":w<CR>")           
vim.keymap.set("n", "<leader>q", ":q<CR>")          
vim.keymap.set("n", "<leader>Q", ":bd!<CR>")        
vim.keymap.set("n", "<leader>nn", ":set number!<CR>") 
-- <leader>1 opens the 1st terminal (Server logs)
vim.keymap.set("n", "<leader>1", ":1ToggleTerm<CR>", { desc = "Terminal 1" })

-- <leader>2 opens the 2nd terminal (Testing)
vim.keymap.set("n", "<leader>2", ":2ToggleTerm<CR>", { desc = "Terminal 2" })
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")


