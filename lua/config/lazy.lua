local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    -- 用于浏览和快速导航的代码大纲窗口
    { import = "lazyvim.plugins.extras.editor.aerial" },
    -- 跳转
    { import = "lazyvim.plugins.extras.editor.leap" },
    -- 状态栏显示面包屑
    { import = "lazyvim.plugins.extras.editor.navic" },
    -- `conform.nvim` & `nvim-line` are now the default formatter and linters in LazyVim
    { import = "lazyvim.plugins.extras.lsp.none-ls" },
    -- Project
    { import = "lazyvim.plugins.extras.util.project" },
    -- import/override with your plugins
    { import = "plugins.lualine" },
    { import = "plugins.colorscheme" },
    { import = "plugins.barbecue" },

    -- import my lsp configuration
    { import = "langs.haskell" },

    -- import my extras configuration
    { import = "extras.coding.neogen" },
    { import = "extras.editor.move" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = true,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = false }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
