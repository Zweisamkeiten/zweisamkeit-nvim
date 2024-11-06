return {
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("neogen").setup({ snippet_engine = "nvim" })
    end,
    keys = {
      { "\\ga", ":lua require('neogen').generate()<CR>", mode = { "n" }, desc = "generate file doc" },
      {
        "\\gf",
        ":lua require('neogen').generate({type = 'func'})<CR>",
        mode = { "n" },
        desc = "generate function doc",
      },
      {
        "\\gc",
        ":lua require('neogen').generate({type = 'class'})<CR>",
        mode = { "n" },
        desc = "generate class doc",
      },
      {
        "\\gt",
        ":lua require('neogen').generate({type = 'type'})<CR>",
        mode = { "n" },
        desc = "generate type doc",
      },
    },
  },
}
