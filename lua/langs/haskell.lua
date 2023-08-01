return {
  {
    "neovim/nvim-lspconfig",
    ft = { "haskell", "cabal" },
    opts = {
      servers = {
        hls = {},
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      if type(opts.sources) == "table" then
        local nls = require("null-ls")
        vim.list_extend({
          nls.builtins.formatting.fourmolu,
        }, opts.sources)
      end
    end,
  },
}
