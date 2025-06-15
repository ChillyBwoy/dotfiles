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
      "vue_ls",
    },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
