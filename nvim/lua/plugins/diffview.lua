return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = {
    "DiffviewClose",
    "DiffviewFileHistory",
    "DiffviewFocusFiles",
    "DiffviewOpen",
    "DiffviewRefresh",
    "DiffviewToggleFiles",
  },
  keys = {
    { "<leader>go", "<cmd>DiffviewOpen<CR>", desc = "Open git diff" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<CR>", desc = "Git file history" },
    { "<leader>gq", "<cmd>DiffviewClose<CR>", desc = "Close git diff" },
  },
  opts = {},
}
