return {
  { "folke/tokyonight.nvim", enabled = false }, -- Disable TokyoNight
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "main",
        dark = true,
      })
      vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
