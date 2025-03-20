return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = function(_, opts)
    opts.window.position = "right"
    vim.cmd([[highlight NeoTreeNormal guibg=NONE]]) -- Change background color
    vim.cmd([[highlight NeoTreeNormalNC guibg=NONE]]) -- For non-current windows
  end,
}
