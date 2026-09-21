return {
  "stevearc/conform.nvim",
  keys = {
    {
      "<leader>ft",
      function()
        require("conform").format({
          async = true,
          lsp_format = "fallback",
        })
      end,
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },

      css = { "prettier" },
      html = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      vue = { "prettier" },

      json = { "prettier" },

      elixir = { "mix" },
      gleam = { "gleam" },
      python = { "ruff_format" },

      rust = { "rustfmt" },
    },

    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 1000,
      lsp_format = "fallback",
    },
  },
}
