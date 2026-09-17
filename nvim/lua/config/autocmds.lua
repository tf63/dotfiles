-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*",
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(0, -2, -1, false)
    if lines[1] ~= "" then
      vim.api.nvim_buf_set_lines(0, -1, -1, false, { "" })
    end
  end,
})
