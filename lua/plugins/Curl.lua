return {
  "oysandvik94/curl.nvim",
  cmd = { "CurlOpen" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("curl").setup({})
  end
}
