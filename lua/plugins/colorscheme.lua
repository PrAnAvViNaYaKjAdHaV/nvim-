return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  priority = 1000,
  opts = function(_, opts)
    opts.flavour = "mocha"
    opts.background = { dark = "mocha" }
    opts.integrations = {
      nvimtree = false,
      neotree = false,
      fzf = false,
    }
    -- require("catppuccin").setup({
    --   flavour = "frappe",
    --   transparent_background = true,
    -- })
  end
}
