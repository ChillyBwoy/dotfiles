return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
  },
  opts = {
    servers = {
      cssls = {},
      elixirls = {},
      eslint = {},
      html = {},
      lua_ls = {},
      pyright = {},
      ts_ls = {},
      vuels = {},
    },
  },
  config = function(_, opts)
    local lspconfig = require("lspconfig")

    for server, config in pairs(opts.servers) do
      config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
      vim.lsp.config(server, config)
    end
  end,
}
