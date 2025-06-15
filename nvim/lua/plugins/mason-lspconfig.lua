return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "css-lsp",
      "elixir-ls",
      "eslint-lsp",
      "html-lsp",
      "lua-language-server",
      "pyright",
      "typescript-language-server",
      "vue-language-server"
    },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
