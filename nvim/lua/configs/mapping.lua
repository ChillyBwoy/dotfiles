local set = vim.keymap.set

set("n", "<C-S-b>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })
set("n", "<C-w>d", "<cmd>lua vim.diagnostic.open_float()<cr>", { desc = "show diagnostic floating window" })

-- barbar mappings

set("n", "<A-,>", "<cmd>BufferPrevious<CR>", { desc = "prev buffer" })
set("n", "<A-.>", "<cmd>BufferNext<CR>", { desc = "next buffer" })

set("n", "<A-1>", "<cmd>BufferGoto 1<CR>", {})
set("n", "<A-2>", "<cmd>BufferGoto 2<CR>", {})
set("n", "<A-3>", "<cmd>BufferGoto 3<CR>", {})
set("n", "<A-4>", "<cmd>BufferGoto 4<CR>", {})
set("n", "<A-5>", "<cmd>BufferGoto 5<CR>", {})
set("n", "<A-6>", "<cmd>BufferGoto 6<CR>", {})
set("n", "<A-7>", "<cmd>BufferGoto 7<CR>", {})
set("n", "<A-8>", "<cmd>BufferGoto 8<CR>", {})
set("n", "<A-9>", "<cmd>BufferGoto 9<CR>", {})

set("n", "<A-c>", "<Cmd>BufferClose<CR>", { desc = "close buffer" })
