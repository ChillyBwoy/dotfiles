return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
      vim.cmd("colorscheme kanagawa")
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    cmd = {
      "NvimTreeToggle",
      "NvimTreeFocus",
    },
    opts = {
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {},
      filters = {
        git_ignored = false,
        dotfiles = true,
      },
    },
  },
  {
    "nvim-tree/nvim-web-devicons",
    opts = {},
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "elixir",
        "heex",
        "gleam",
        "typescript",
        "rust",
        "zig",
      },
      highlight = {
        enable = true,
      },
    },
  },
  {
    "mason-org/mason.nvim",
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
  { "nvim-telescope/telescope.nvim" },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        elixir = { "mix" },
      },
      format_on_save = true,
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({})
    end,
  },
}
