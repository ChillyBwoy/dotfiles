return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "cssls",
      "elixirls",
      "eslint",
      "html",
      "lua_ls",
      "pyright",
      "ts_ls",
      "vuels",
    },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
