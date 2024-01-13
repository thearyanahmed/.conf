require("conform").setup {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    ts = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },

    sh = { "beautysh" },
    php = { "php" },
  },

  lsp_fallback = true,

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
