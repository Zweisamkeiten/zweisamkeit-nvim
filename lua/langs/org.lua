return {
  { "nvim-treesitter/nvim-treesitter" },

  {
    "nvim-orgmode/orgmode",
    ft = { "org" },
    config = function()
      require("orgmode").setup_ts_grammar()
      require("orgmode").setup({})
    end,
  },
}
