local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

-- Check if the config is already defined (useful when reloading this file)
if not configs.nanors then
  configs.nanors = {
    default_config = {
      cmd = { "/home/einsam/p/languages/rust/toy_lsp/target/debug/toy_lsp" },
      filetypes = { "nrs" },
      root_dir = function(fname)
        return lspconfig.util.find_git_ancestor(fname)
      end,
      settings = {},
    },
  }
end

lspconfig.nanors.setup({})
