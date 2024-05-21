local function map(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts)
end

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
map("t", "<C-h>", "<BACKSPACE>", { desc = "<C-h> in terminal mode", remap = true })

-- Mini Comment
map("n", "<M-;>", "gcc", { desc = "Comment Line", remap = true })
map("x", "<M-;>", "gc", { desc = "Comment selection", remap = true })

-- Terminal
map("n", "<leader>tt", ":<c-u>split | resize 20 | term<cr>a", { desc = "Terminal (cwd)" })

-- accelerated_jk
map("n", "j", '<Cmd>lua require "accelerated-jk".move_to("j")<CR>', {})
map("n", "<C-n>", '<Cmd>lua require "accelerated-jk".move_to("j")<CR>', {})
map("n", "k", '<Cmd>lua require "accelerated-jk".move_to("k")<CR>', {})
map("n", "<C-p>", '<Cmd>lua require "accelerated-jk".move_to("k")<CR>', {})

map("n", "gUaw", 'gUaw<esc>e', { desc = "Upper case word"})
map("n", "guaw", 'guaw<esc>e', { desc = "Down case word"})
