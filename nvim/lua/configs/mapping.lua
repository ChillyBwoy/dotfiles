vim.keymap.set("n", "<C-S-b>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })
vim.keymap.set("n", "<C-w>d", "<cmd>lua vim.diagnostic.open_float()<cr>", { desc = "show diagnostic floating window" })
