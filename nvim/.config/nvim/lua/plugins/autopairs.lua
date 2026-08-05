return {
  {
    "https://github.com/windwp/nvim-autopairs",
    event = "InsertEnter", -- Only load when you enter Insert mode
    config = function()
      require("nvim-autopairs").setup()
    end,
  },
}
