return {
  "epwalsh/obsidian.nvim",
  lazy = true,
  event = "VeryLazy",        -- Load the plugin lazily
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required dependency for obsidian.nvim
  },
  opts = {
    mappings = {
      ["<leader>oo"] = { "<cmd>ObsidianOpen<CR>", "Open Obsidian" },
    },
    workspaces = {
      {
        name = "notes",
        path = "~/Obsidian Vault/notes/",
        strict = true,
      },
      {
        name = "PersonalProject",
        path = "~/Obsidian Vault/PersonalProject/",
        strict = true,
      },
      {
        name = "Dsa",
        path = "~/Obsidian Vault/Dsa/",
        strict = true,
      }
    }
  },
  config = function(_, opts)
    require("obsidian").setup(opts)
  end,
}
