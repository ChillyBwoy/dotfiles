return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      compile = true,
      transparent = false,
      theme = "wave",
    })
    vim.cmd("colorscheme kanagawa")
  end,
  build = function()
    vim.cmd("KanagawaCompile")
  end,
}
