require("conform").setup {
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    --    python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    javascript = { { "ast-grep" }, { "prettierd" }, { "prettier" } },

    typescript = { "prettier" },
    tsx = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },

    sh = { "beautysh" },
    php = { "pretty-php" },
  },

  lsp_fallback = true,

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})
