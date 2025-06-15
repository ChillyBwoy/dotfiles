return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local servers = { "html", "cssls", "elixirls", "ts_ls" }
      local lspconfig = require("lspconfig")

      -- lsps with default config
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
        })
      end
    end,
  },
}
