return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
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
      "python",
      "gleam",
      "markdown",
      "markdown_inline",
    })
  end,
}
