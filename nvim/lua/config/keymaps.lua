-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n", "v" }, "<C-a>", "0")
vim.keymap.set({ "n", "v" }, "<C-e>", "$")
vim.keymap.set("i", "<C-a>", "<Home>")
vim.keymap.set("i", "<C-e>", "<End>")

vim.keymap.set({ "n", "v" }, "<C-u>", "b")
vim.keymap.set({ "n", "v" }, "<C-i>", "w")
vim.keymap.set("i", "<C-u>", "<C-o>b")
vim.keymap.set("i", "<C-i>", "<C-o>w")

vim.keymap.set({ "n", "v" }, "<C-n>", "<C-d>")
vim.keymap.set({ "n", "v" }, "<C-p>", "<C-u>")
vim.keymap.set("i", "<C-n>", "<C-o><C-d>")
vim.keymap.set("i", "<C-p>", "<C-o><C-u>")

vim.keymap.set("n", "<C-_>", "gcc")
vim.keymap.set("v", "<C-_>", "gc")
vim.keymap.set("n", "<C-/>", "gcc")
vim.keymap.set("v", "<C-/>", "gc")

vim.keymap.set("n", "<leader>e", function()
  Snacks.explorer({ cwd = vim.fn.getcwd() })
end, { desc = "Explorer (cwd)" })

vim.keymap.set("n", "<leader>E", function()
  Snacks.explorer({ cwd = LazyVim.root() })
end, { desc = "Explorer (root)" })

vim.keymap.set("n", "<leader><leader>", function()
  Snacks.picker.files({ cwd = vim.fn.getcwd() })
end, { desc = "Find Files (cwd)" })
