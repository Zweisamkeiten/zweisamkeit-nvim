-- augroup filetypedetect
--   autocmd!
--   autocmd BufNewFile,BufRead *.foo setfiletype foo
-- augroup END

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.nrs",
  callback = function()
    vim.bo.filetype = "nrs"
  end,
})
