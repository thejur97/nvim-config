vim.api.nvim_create_autocmd("FileType", {
  pattern = "dts,dtsi",
  callback = function()
    vim.b.comment_leader = "/*"
    vim.b.comment_leader_end = "*/"
    vim.bo.commentstring = "/*%s*/"
  end,
})
