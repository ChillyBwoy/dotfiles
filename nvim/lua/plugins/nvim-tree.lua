return {
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
      dotfiles = false,
      custom = {
        "**/__pycache__",
        "**/.git",
        "^\\.DS_Store$",
      },
      exclude = {
        ".gitkeep",
        ".gitignore",
      }
    },
  },
}
