return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      php = { "phpcbf", "pretty_php" },
      css = { "stylelint" },
      scss = { "prettier", "stylelint" }, -- use if stylelint rules are crazy and don't want to manually fix.
      -- scss = { "prettier" }, -- use when don't mind fixing some lints manually.
      -- javascript = { "eslint_d" }, -- use for 10up toolkit
      javascript = { "prettier" },
    },
    formatters = {
      phpcbf = {
        command = "./vendor/bin/phpcbf",
        -- Let phpcbf auto-detect phpcs.xml/.dist in project root
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
        -- tell PrettyPHP to use the WordPress preset
        args = { "--preset=wordpress", "$FILENAME" },
        stdin = false,
        cwd = require("conform.util").root_file({
          "composer.json",
          ".git",
        }),
      },
    },
  },
}
