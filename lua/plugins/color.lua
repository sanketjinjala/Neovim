return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
      Colors = require("catppuccin.palettes").get_palette("mocha")
      require("catppuccin").setup({
        -- Add this line to make the background transparent
        transparent_background = true,
        color_overrides = {
          mocha = {
            base = "#0C0C0C",
            crust = "#1e1e1e",
          },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "tokyonight-moon",
    },
  },
}
