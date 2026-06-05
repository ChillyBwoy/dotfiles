local set = vim.keymap.set

-- base

set({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
set({ "n", "i", "v" }, "<D-s>", "<cmd>w<CR>", { desc = "Save file with Cmd+S" })

-- LSP

set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP Go to Definition" })
set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })
set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP rename variable" })
set("n", "K", function()
  vim.lsp.buf.hover({
    border = "single",
    focusable = true,
  })
end, { desc = "LSP Hover Info" })
set("n", "<leader>e", function()
  vim.diagnostic.open_float({
    border = "single",
    focusable = true,
  })
end, { desc = "Show diagnostic floating window" })

-- nvim-tree mapings

set("n", "<C-S-b>", "<cmd>NvimTreeToggle<CR>", { desc = "nvim-tree toggle window" })
set("n", "<leader><tab>", "<cmd>NvimTreeFocus<CR>", { desc = "nvim-tree focus window" })

-- barbar.nvim mappings

set("n", "<A-,>", "<cmd>BufferPrevious<CR>", { desc = "Prev buffer" })
set("n", "<A-.>", "<cmd>BufferNext<CR>", { desc = "Next buffer" })

set("n", "<A-1>", "<cmd>BufferGoto 1<CR>", {})
set("n", "<A-2>", "<cmd>BufferGoto 2<CR>", {})
set("n", "<A-3>", "<cmd>BufferGoto 3<CR>", {})
set("n", "<A-4>", "<cmd>BufferGoto 4<CR>", {})
set("n", "<A-5>", "<cmd>BufferGoto 5<CR>", {})
set("n", "<A-6>", "<cmd>BufferGoto 6<CR>", {})
set("n", "<A-7>", "<cmd>BufferGoto 7<CR>", {})
set("n", "<A-8>", "<cmd>BufferGoto 8<CR>", {})
set("n", "<A-9>", "<cmd>BufferGoto 9<CR>", {})

set("n", "<A-c>", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })
