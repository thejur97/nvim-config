vim.keymap.set('n', '<F8>', ':TagbarToggle<CR>', {})
vim.keymap.set('n', '<F6>', function()
	vim.g.tagbar_width = vim.g.tagbar_width + 5
	vim.cmd("TagbarClose")
	vim.cmd("TagbarOpen")
end)
vim.keymap.set('n', '<F7>', function()
	vim.g.tagbar_width = vim.g.tagbar_width - 5
	vim.cmd("TagbarClose")
	vim.cmd("TagbarOpen")
end)
