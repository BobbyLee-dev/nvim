return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "php",
        "html",
        "css",
        "scss",
        "javascript",
        "json",
        "bash",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "php" },
      },
    },
  },
}
