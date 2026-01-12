-- Laravel project config
-- PHP: Pint formatter, PHPStan linting
-- JS: Prettier

return {
  -- Formatters
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "pint" },
        blade = { "blade-formatter" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
      },
      formatters = {
        pint = {
          command = "./vendor/bin/pint",
          args = { "$FILENAME" },
          stdin = false,
          cwd = require("conform.util").root_file({
            "pint.json",
            "composer.json",
          }),
        },
      },
    },
  },

  -- Linters
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        php = { "phpstan" },
      },
    },
  },
}
