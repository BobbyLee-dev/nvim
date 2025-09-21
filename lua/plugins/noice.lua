return {
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        hover = {
          enabled = true,
          silent = false, -- set to true to not show a message if hover is not available
        },
        signature = {
          enabled = true,
          auto_open = {
            enabled = false, -- This should prevent auto-opening
            trigger = false, -- Don't auto trigger
            luasnip = false, -- Don't trigger with luasnip
            throttle = 50,
          },
        },
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      views = {
        hover = {
          backend = "split",
          enter = false,
          relative = "editor",
          position = "bottom",
          size = "30%",
          border = {
            style = "rounded",
          },
          win_options = {
            winhighlight = "Normal:Normal,FloatBorder:DiagnosticInfo",
          },
        },
      },
    },
  },
}
