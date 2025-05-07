return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "latte", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false,
        integrations = {
          markdown = true,
          render_markdown = true,
          blink_cmp = true,
          gitsigns = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
