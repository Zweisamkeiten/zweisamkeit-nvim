return {
  -- {
  --   "neovim/nvim-lspconfig",
  --   ft = { "haskell", "cabal" },
  --   opts = {
  --     servers = {
  --       hls = {},
  --     },
  --   },
  -- },
  {
    "nvimtools/null-ls.nvim",
    opts = function(_, opts)
      if type(opts.sources) == "table" then
        local nls = require("null-ls")
        vim.list_extend(opts.sources, {
          nls.builtins.formatting.fourmolu,
        })
      end
    end,
  },
}
