-- Mason tool installations
-- All tools for all project types (project config picks which to use)

return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- PHP
        "intelephense",
        "phpactor",
        "php-cs-fixer",
        "phpcbf",
        "phpcs",
        "phpstan",
        "pretty-php",

        -- Blade
        "blade-formatter",

        -- JavaScript/TypeScript
        "vtsls",
        "prettier",
        "eslint_d",
        "eslint-lsp",

        -- CSS
        "css-lsp",
        "css-variables-language-server",
        "stylelint",
        "stylelint-lsp",
        "tailwindcss-language-server",

        -- HTML
        "html-lsp",
        "emmet-language-server",

        -- JSON / YAML (configs, composer.json, etc.)
        "json-lsp",
        "yaml-language-server",
        "yamllint",

        -- Ansible (Trellis)
        "ansible-language-server",
        "ansible-lint",

        -- Docker / Lando
        "dockerfile-language-server",
        "docker-compose-language-service",
        "hadolint",

        -- Shell / Bash
        "shfmt",
        "bash-language-server",
        "shellcheck",

        -- Lua
        "lua-language-server",
        "stylua",

        -- Markdown
        "markdownlint",
        "marksman",

        -- Git
        "gitlint",
      },
    },
  },
}
