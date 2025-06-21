function RTags()
  vim.cmd [[!ctags -f .tags --languages=c,c++ --exclude=.git -R .]]
end
vim.keymap.set("n", "<leader>rt", RTags)
