-- lazy-extras.lua
-- Language support (replaces LazyVim lang.* extras)
-- Treesitter + LSP for all languages
-- Load all - they only activate when you open that filetype

return {
  -- ==========================================
  -- TREESITTER (all parsers)
  -- ==========================================
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- PHP / Blade
        "php",
        "phpdoc",
        "blade",
        -- JS / TS
        "javascript",
        "typescript",
        "tsx",
        "jsdoc",
        -- Web
        "html",
        "css",
        "scss",
        -- Data
        "json",
        "json5",
        "jsonc",
        "yaml",
        -- Config / DevOps
        "lua",
        "bash",
        "dockerfile",
        -- Docs
        "markdown",
        "markdown_inline",
      },
    },
  },

  -- ==========================================
  -- JSON (with SchemaStore)
  -- ==========================================
  {
    "b0o/SchemaStore.nvim",
    lazy = true,
    version = false,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jsonls = {
          on_new_config = function(new_config)
            new_config.settings.json.schemas = new_config.settings.json.schemas or {}
            vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
          end,
          settings = {
            json = {
              format = { enable = true },
              validate = { enable = true },
            },
          },
        },
      },
    },
  },

  -- ==========================================
  -- PHP
  -- ==========================================
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          filetypes = { "php", "blade" },
          settings = {
            intelephense = {
              files = {
                maxSize = 5000000,
              },
            },
          },
        },
      },
    },
  },

  -- ==========================================
  -- JavaScript / TypeScript
  -- ==========================================
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          filetypes = {
            "javascript",
            "javascriptreact",
            "javascript.jsx",
            "typescript",
            "typescriptreact",
            "typescript.tsx",
          },
          settings = {
            complete_function_calls = true,
            vtsls = {
              enableMoveToFileCodeAction = true,
            },
          },
        },
      },
    },
  },

  -- ==========================================
  -- CSS / Tailwind
  -- ==========================================
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cssls = {},
        tailwindcss = {
          filetypes = {
            "html",
            "blade",
            "php",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
          },
        },
      },
    },
  },

  -- ==========================================
  -- HTML / Emmet
  -- ==========================================
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {
          filetypes = { "html", "blade" },
        },
        emmet_language_server = {
          filetypes = {
            "html",
            "blade",
            "css",
            "scss",
            "javascriptreact",
            "typescriptreact",
          },
        },
      },
    },
  },

  -- ==========================================
  -- YAML (Trellis, Lando, Docker Compose)
  -- ==========================================
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              keyOrdering = false,
              schemaStore = { enable = true },
            },
          },
        },
      },
    },
  },

  -- ==========================================
  -- Ansible (Trellis)
  -- ==========================================
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ansiblels = {},
      },
    },
  },

  -- ==========================================
  -- Docker
  -- ==========================================
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dockerls = {},
        docker_compose_language_service = {},
      },
    },
  },

  -- ==========================================
  -- Bash
  -- ==========================================
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {},
      },
    },
  },
}
