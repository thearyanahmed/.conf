local plugins = {
  {
    "Pocco81/auto-save.nvim",
    lazy = false,
    config = function()
      require("auto-save").setup {}
    end,
  },
  -- [[{"nvim-lua/plenary.nvim"},
  -- {
  --  "nvimtools/none-ls.nvim",
  --  config = function()
   --   require "custom.thearyanahmed.configs.none-ls"
   -- end,
  -- },
   {
    "stevearc/conform.nvim",
   lazy = false,
    config = function()
    require "custom.thearyanahmed.formatter"
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
        -- "awk-language-server",
        "bash-language-server",
        "cmake-language-server",
        "css-lsp",
        -- "autotools-language-server",
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
        -- "taplo",
        "tailwindcss-language-server",
        "terraform-ls",
        "typescript-language-server",
        "vue-language-server",
      },
    },
  },
}

return plugins
