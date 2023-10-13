local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
map("t", "<C-h>", "<BACKSPACE>", { desc = "<C-h> in terminal mode", remap = true })

-- Mini Comment
map("n", "<M-;>", function() return MiniComment.operator() .. '_' end, { expr = true, desc = "Comment the line" })
map("x", "<M-;>", ":<c-u>lua MiniComment.operator('visual')<cr>", { desc = "Comment selection" })

-- Terminal
map("n", "<leader>tt", ":<c-u>split | resize 20 | term<cr>a", { desc = "Terminal (cwd)" })

-- accelerated_jk
map("n", "j", '<Cmd>lua require "accelerated-jk".move_to("j")<CR>', {})
map("n", "<C-n>", '<Cmd>lua require "accelerated-jk".move_to("j")<CR>', {})
map("n", "k", '<Cmd>lua require "accelerated-jk".move_to("k")<CR>', {})
map("n", "<C-p>", '<Cmd>lua require "accelerated-jk".move_to("k")<CR>', {})

map("n", "gUaw", 'gUaw<esc>e', { desc = "Upper case word"})
map("n", "guaw", 'guaw<esc>e', { desc = "Down case word"})
