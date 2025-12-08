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

-- WINDOW MANAGEMENT
-- 1. Navigation: Move between splits using Ctrl + Arrow keys (h,j,k,l)
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to Left Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to Bottom Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to Top Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to Right Window" })

-- 2. Resizing: Resize splits with Arrow keys
vim.keymap.set("n", "<Up>", ":resize +2<CR>", { desc = "Increase Height" })
vim.keymap.set("n", "<Down>", ":resize -2<CR>", { desc = "Decrease Height" })
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", { desc = "Decrease Width" })
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", { desc = "Increase Width" })

vim.opt.number = true
vim.opt.relativenumber = true

-- Copy to system clipboard using <leader>y
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Copy to system clipboard" })

-- Paste from system clipboard using <leader>p
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]], { desc = "Paste from system clipboard" })

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")


