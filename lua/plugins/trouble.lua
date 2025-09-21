return {
  "folke/trouble.nvim",
  cmd = { "Trouble" },
  opts = {
    modes = {
      lsp = {
        win = {
          position = "bottom",
          size = { height = 0.3 },
        },
        focus = true,
      },
      diagnostics = {
        win = {
          position = "bottom",
          size = { height = 0.3 },
        },
        focus = true,
      },
      symbols = {
        win = {
          position = "bottom",
          size = { height = 0.3 },
        },
        focus = true,
      },
    },
  },
}
