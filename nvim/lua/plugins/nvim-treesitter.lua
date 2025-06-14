return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vim",
      "lua",
      "vimdoc",
      "html",
      "css",
      "elixir",
      "eex",
      "heex",
      "gleam",
      "typescript",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
