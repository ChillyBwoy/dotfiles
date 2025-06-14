return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  branch = "master",
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
