local plugins = {
  {
    "Pocco81/auto-save.nvim",
    lazy = false,
    config = function()
      require("auto-save").setup {}
    end,
  },
  {
    "stevearc/conform.nvim",
    lazy = false,
    config = function()
      require "custom.thearyanahmed.configs.formatter"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.thearyanahmed.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "prettierd",
        "jq", -- json
        "stylua", -- lua,
        "asmfmt",
        "ast-grep",
        "blade-formatter",
        "php-cs-fixer",
        "rust-analyzer",
        "goimports",
        "yamlfmt",
        "sqlfmt",
        "beautysh",
        "bash-language-server",
        "cmake-language-server",
        "css-lsp",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "gopls",
        "html-lsp",
        "helm-ls",
        "json-lsp",
        "marksman",
        "intelephense",
        "pyright",
        "sqlls",
        "tailwindcss-language-server",
        "terraform-ls",
        "typescript-language-server",
        "vue-language-server",
      },
    },
  },
}

return plugins
