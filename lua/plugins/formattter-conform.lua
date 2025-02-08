return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      prettier = {
        args = { "--single-quote", "--jsx-single-quote" },
      },
    },
    formatters_by_ft = {
      javascript = { "prettier", stop_after_first = true },
      typescript = { "prettier", stop_after_first = true },
      typescriptreact = { "prettier", stop_after_first = true },
      javascriptreact = { "prettier", stop_after_first = true },
      -- Add other file types and their formatters as needed
    }
  },
}
