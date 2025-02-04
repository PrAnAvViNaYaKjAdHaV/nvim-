return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { "rustfmt", lsp_format = "fallback" },
        javascript = { "prettierd", "prettier", "eslint", stop_after_first = true },
        typescript = { "prettierd", "prettier", "eslint", stop_after_first = true },
        -- Add other file types and their formatters as needed
      }
    },
  },
}
