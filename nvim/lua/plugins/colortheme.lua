return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      compile = false,
      transparent = true,
      theme = "dragon",
    })
    vim.cmd("colorscheme kanagawa-wave")
  end,
  build = function()
    vim.cmd("KanagawaCompile")
  end,
}
