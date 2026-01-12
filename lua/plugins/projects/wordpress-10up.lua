-- WordPress + 10up Toolkit project config
-- PHP: PHPCBF + PrettyPHP formatter, PHPCS linting
-- JS: ESLint (10up toolkit uses eslint)

return {
  -- Formatters
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "phpcbf", "pretty_php" },
        -- php = { "phpcbf" }, -- Use if project has phpcs.xml
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        css = { "stylelint" },
        scss = { "prettier", "stylelint" },
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
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
      },
    },
  },
}
