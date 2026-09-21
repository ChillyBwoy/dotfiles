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
      lua_ls = {
        diagnostics = {
          globals = { "vim" },
        },
      },
      pyright = {},
      ts_ls = {},
      vue_ls = {},
      gleam = {},
      zls = {},
      rust_analyzer = {},
    },
  },
  config = function(_, opts)
    local lspconfig = require("lspconfig")
    local eslint_on_attach = vim.lsp.config.eslint.on_attach

    opts.servers.eslint.on_attach = function(client, bufnr)
      if eslint_on_attach then
        eslint_on_attach(client, bufnr)
      end

      local group = vim.api.nvim_create_augroup("eslint_fix_on_save", { clear = false })
      vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = group,
        buffer = bufnr,
        command = "LspEslintFixAll",
        desc = "Apply ESLint fixes before saving",
      })
    end

    for server, config in pairs(opts.servers) do
      config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
      vim.lsp.config(server, config)
    end
  end,
}
