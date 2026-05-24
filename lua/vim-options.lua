vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Core actions
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit Window" })
vim.keymap.set("n", "<leader>Q", "<cmd>bd!<CR>", { desc = "Force Close Buffer" })
vim.keymap.set("n", "<leader>n", "<cmd>set number! relativenumber!<CR>", { desc = "Toggle Line Numbers" })

-- Clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to System Clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], { desc = "Paste from System Clipboard" })

-- Panes / splits
vim.keymap.set("n", "<leader>v", "<cmd>vsplit<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>h", "<cmd>split<CR>", { desc = "Horizontal Split" })
vim.keymap.set("n", "<leader>x", "<cmd>close<CR>", { desc = "Close Split" })
vim.keymap.set("n", "<leader>=", "<C-w>=", { desc = "Equalize Splits" })

-- Move between panes with Ctrl + home-row keys.
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to Left Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to Bottom Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to Top Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to Right Window" })

-- Resize panes with arrows.
vim.keymap.set("n", "<Up>", "<cmd>resize +2<CR>", { desc = "Increase Height" })
vim.keymap.set("n", "<Down>", "<cmd>resize -2<CR>", { desc = "Decrease Height" })
vim.keymap.set("n", "<Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease Width" })
vim.keymap.set("n", "<Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase Width" })

-- Terminals
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Toggle Terminal" })
vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Floating Terminal" })
vim.keymap.set("n", "<leader>t1", "<cmd>1ToggleTerm<CR>", { desc = "Terminal 1" })
vim.keymap.set("n", "<leader>t2", "<cmd>2ToggleTerm<CR>", { desc = "Terminal 2" })

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
