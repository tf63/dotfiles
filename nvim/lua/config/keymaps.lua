-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ============================================================
-- 行内移動（行頭・行末へ移動）
-- ============================================================
vim.keymap.set({ "n", "v" }, "<C-a>", "0") -- 行頭へ
vim.keymap.set({ "n", "v" }, "<C-e>", "$") -- 行末へ
vim.keymap.set("i", "<C-a>", "<Home>") -- 行頭へ（挿入モード）
vim.keymap.set("i", "<C-e>", "<End>") -- 行末へ（挿入モード）

-- ============================================================
-- 単語単位の移動
-- ============================================================
vim.keymap.set({ "n", "v" }, "<C-u>", "b") -- 前の単語へ
vim.keymap.set({ "n", "v" }, "<C-i>", "w") -- 次の単語へ
vim.keymap.set("i", "<C-u>", "<C-o>b") -- 前の単語へ（挿入モード）
vim.keymap.set("i", "<C-i>", "<C-o>w") -- 次の単語へ（挿入モード）

-- ============================================================
-- ページ単位のスクロール
-- ============================================================
vim.keymap.set({ "n", "v" }, "<C-n>", "<C-d>") -- 半ページ下へ
vim.keymap.set({ "n", "v" }, "<C-p>", "<C-u>") -- 半ページ上へ
vim.keymap.set("i", "<C-n>", "<C-o><C-d>") -- 半ページ下へ（挿入モード）
vim.keymap.set("i", "<C-p>", "<C-o><C-u>") -- 半ページ上へ（挿入モード）

-- ============================================================
-- コメントのトグル（デフォルトの <C-/> を上書き）
-- ============================================================
vim.keymap.del("n", "<C-/>")
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Toggle comment" })
vim.keymap.set("i", "<C-/>", "<C-o>gcc", { remap = true, desc = "Toggle comment" })
vim.keymap.set("v", "<C-/>", "gc", { remap = true, desc = "Toggle comment" })

-- ============================================================
-- ファイルエクスプローラー / ファイル検索
-- ============================================================
vim.keymap.set("n", "<leader>e", function()
  Snacks.explorer({ cwd = vim.fn.getcwd() })
end, { desc = "Explorer (cwd)" })

vim.keymap.set("n", "<leader>E", function()
  Snacks.explorer({ cwd = LazyVim.root() })
end, { desc = "Explorer (root)" })

vim.keymap.set("n", "<leader><leader>", function()
  Snacks.picker.files({ cwd = vim.fn.getcwd() })
end, { desc = "Find Files (cwd)" })

-- ============================================================
-- 元に戻す / やり直し
-- ============================================================
vim.keymap.set({ "n", "i" }, "<D-z>", "<Cmd>undo<CR>") -- 元に戻す
vim.keymap.set({ "n", "i" }, "<C-y>", "<Cmd>redo<CR>") -- やり直し

-- ============================================================
-- バッファの切り替え
-- ============================================================
vim.keymap.set({ "n", "i" }, "<C-[>", "<Cmd>BufferLineCyclePrev<CR>", {
  desc = "Prev Buffer",
})
vim.keymap.set({ "n", "i" }, "<C-]>", "<Cmd>BufferLineCycleNext<CR>", {
  desc = "Next Buffer",
})

-- ============================================================
-- 削除時にレジスタへヤンクしない
-- ============================================================
vim.keymap.set({ "n", "v" }, "d", '"_d', {
  desc = "Delete without yanking",
})

-- ============================================================
-- Shift+矢印キーでの選択範囲操作
-- ============================================================
-- ノーマル/挿入モード：ビジュアルモードに入りつつ1文字選択
vim.keymap.set({ "n", "i" }, "<S-Left>", "<Esc>v<Left>", { silent = true })
vim.keymap.set({ "n", "i" }, "<S-Right>", "<Esc>v<Right>", { silent = true })
vim.keymap.set({ "n", "i" }, "<S-Up>", "<Esc>v<Up>", { silent = true })
vim.keymap.set({ "n", "i" }, "<S-Down>", "<Esc>v<Down>", { silent = true })
-- ビジュアルモード：選択範囲をそのまま拡張
vim.keymap.set("v", "<S-Left>", "<Left>", { silent = true })
vim.keymap.set("v", "<S-Right>", "<Right>", { silent = true })
vim.keymap.set("v", "<S-Up>", "<Up>", { silent = true })
vim.keymap.set("v", "<S-Down>", "<Down>", { silent = true })

-- ============================================================
-- Shift+Ctrl での単語単位の選択
-- ============================================================
vim.keymap.set("n", "<C-S-u>", "vb") -- 前の単語まで選択開始
vim.keymap.set("n", "<C-S-i>", "vw") -- 次の単語まで選択開始
vim.keymap.set("i", "<C-S-u>", "<C-o>vb") -- 前の単語まで選択開始（挿入モード）
vim.keymap.set("i", "<C-S-i>", "<C-o>vw") -- 次の単語まで選択開始（挿入モード）
vim.keymap.set("v", "<C-S-u>", "b") -- 選択範囲を前の単語まで拡張
vim.keymap.set("v", "<C-S-i>", "w") -- 選択範囲を次の単語まで拡張

-- ============================================================
-- Shift+Ctrl での半ページ選択
-- ============================================================
vim.keymap.set("n", "<C-S-n>", "v<C-d>") -- 半ページ下まで選択開始
vim.keymap.set("n", "<C-S-p>", "v<C-u>") -- 半ページ上まで選択開始
vim.keymap.set("i", "<C-S-n>", "<C-o>v<C-d>") -- 半ページ下まで選択開始（挿入モード）
vim.keymap.set("i", "<C-S-p>", "<C-o>v<C-u>") -- 半ページ上まで選択開始（挿入モード）
vim.keymap.set("v", "<C-S-n>", "<C-d>") -- 選択範囲を半ページ下まで拡張
vim.keymap.set("v", "<C-S-p>", "<C-u>") -- 選択範囲を半ページ上まで拡張

-- ============================================================
-- Shift+Ctrl+A / Shift+Ctrl+E で行単位の選択
-- ============================================================
-- ノーマルモード：Visual Modeに入りつつ行頭/行末まで選択
vim.keymap.set("n", "<C-S-a>", "v0", { silent = true })
vim.keymap.set("n", "<C-S-e>", "v$", { silent = true })

-- 挿入モード：Visual Modeに入りつつ行頭/行末まで選択
vim.keymap.set("i", "<C-S-a>", "<Esc>v0", { silent = true })
vim.keymap.set("i", "<C-S-e>", "<Esc>v$", { silent = true })

-- ビジュアルモード：選択範囲を行頭/行末まで拡張
vim.keymap.set("v", "<C-S-a>", "0", { silent = true })
vim.keymap.set("v", "<C-S-e>", "$", { silent = true })

vim.keymap.set("n", "<leader>W", "<cmd>noautocmd write<cr>", {
  desc = "Save without formatting",
})
