local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white },
  },
}


return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function(_, opts)
    opts.options = {
      theme = 'catppuccin-mocha',
      component_separators = '',
      section_separators = { left = '', right = '' },
    }
    opts.sections = {
      lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
      lualine_b = { 'filename', 'branch' },
      lualine_c = {
        '%=', --[[ add your center compoentnts here in place of this comment ]]
      },
      lualine_x = {},
      lualine_y = { 'filetype', 'progress' },
      lualine_z = {
        { 'location', separator = { right = '' }, left_padding = 2 },
      },
    }
    opts.inactive_sections = {
      lualine_a = { 'filename' },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'location' },
    }
    opts.tabline = {}
    opts.extensions = {}
  end,
  config = function(_, opts)
    local auto = require "lualine.themes.auto"
    local lualine_modes = { "insert", "normal", "visual", "command", "replace", "inactive", "terminal" }
    for _, field in ipairs(lualine_modes) do
      if auto[field] and auto[field].c then
        auto[field].c.bg = "NONE"
      end
    end
    opts.options.theme = auto
    require("lualine").setup(opts)
  end
}
