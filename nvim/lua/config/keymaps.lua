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

vim.keymap.del("n", "<C-/>")
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Toggle comment" })
vim.keymap.set("i", "<C-/>", "<C-o>gcc", { remap = true, desc = "Toggle comment" })
vim.keymap.set("v", "<C-/>", "gc", { remap = true, desc = "Toggle comment" })

vim.keymap.set("n", "<leader>e", function()
  Snacks.explorer({ cwd = vim.fn.getcwd() })
end, { desc = "Explorer (cwd)" })

vim.keymap.set("n", "<leader>E", function()
  Snacks.explorer({ cwd = LazyVim.root() })
end, { desc = "Explorer (root)" })

vim.keymap.set("n", "<leader><leader>", function()
  Snacks.picker.files({ cwd = vim.fn.getcwd() })
end, { desc = "Find Files (cwd)" })

vim.keymap.set({ "n", "i" }, "<D-z>", "<Cmd>undo<CR>")
vim.keymap.set({ "n", "i" }, "<C-y>", "<Cmd>redo<CR>")

vim.keymap.set({ "n", "i" }, "<C-[>", "<Cmd>BufferLineCyclePrev<CR>", {
  desc = "Prev Buffer",
})
vim.keymap.set({ "n", "i" }, "<C-]>", "<Cmd>BufferLineCycleNext<CR>", {
  desc = "Next Buffer",
})

vim.keymap.set({ "n", "v" }, "d", '"_d', {
  desc = "Delete without yanking",
})

vim.keymap.set({ "n", "i" }, "<S-Left>", "<Esc>v<Left>", { silent = true })
vim.keymap.set({ "n", "i" }, "<S-Right>", "<Esc>v<Right>", { silent = true })
vim.keymap.set({ "n", "i" }, "<S-Up>", "<Esc>v<Up>", { silent = true })
vim.keymap.set({ "n", "i" }, "<S-Down>", "<Esc>v<Down>", { silent = true })
vim.keymap.set("v", "<S-Left>", "<Left>", { silent = true })
vim.keymap.set("v", "<S-Right>", "<Right>", { silent = true })
vim.keymap.set("v", "<S-Up>", "<Up>", { silent = true })
vim.keymap.set("v", "<S-Down>", "<Down>", { silent = true })

vim.keymap.set("n", "<C-S-u>", "vb")
vim.keymap.set("n", "<C-S-i>", "vw")
vim.keymap.set("i", "<C-S-u>", "<C-o>vb")
vim.keymap.set("i", "<C-S-i>", "<C-o>vw")
vim.keymap.set("v", "<C-S-u>", "b")
vim.keymap.set("v", "<C-S-i>", "w")

vim.keymap.set("n", "<C-S-n>", "v<C-d>")
vim.keymap.set("n", "<C-S-p>", "v<C-u>")
vim.keymap.set("i", "<C-S-n>", "<C-o>v<C-d>")
vim.keymap.set("i", "<C-S-p>", "<C-o>v<C-u>")
vim.keymap.set("v", "<C-S-n>", "<C-d>")
vim.keymap.set("v", "<C-S-p>", "<C-u>")
