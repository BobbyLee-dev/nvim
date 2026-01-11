-- WordPress project config (standard)
-- PHP: PHPCBF + PrettyPHP formatter, PHPCS linting
-- JS: Prettier

return {
  -- Formatters
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "phpcbf", "pretty_php" },
        -- php = { "phpcbf" }, -- Use if project has phpcs.xml
        javascript = { "prettier" },
        typescript = { "prettier" },
        css = { "stylelint" },
        scss = { "prettier", "stylelint" },
        -- scss = { "prettier" }, -- Use if stylelint rules are manageable
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
      },
      formatters = {
        phpcbf = {
          command = "./vendor/bin/phpcbf",
          args = { "$FILENAME" },
          stdin = false,
          cwd = require("conform.util").root_file({
            "phpcs.xml",
            "phpcs.xml.dist",
            "composer.json",
          }),
        },
        pretty_php = {
          command = "pretty-php",
          args = { "--preset=wordpress", "$FILENAME" },
          stdin = false,
          cwd = require("conform.util").root_file({
            "composer.json",
            ".git",
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
        php = { "phpcs" },
      },
    },
  },
}
