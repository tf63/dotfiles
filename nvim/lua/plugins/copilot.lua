return {
  {
    "github/copilot.vim",
    config = function()
      vim.keymap.set("i", "<C-;>", "<Plug>(copilot-accept-line)")
      vim.keymap.set("i", "<C-S-;>", "<Plug>(copilot-dismiss)")
      vim.keymap.set("i", "<M-]>", "<Plug>(copilot-next)")
      vim.keymap.set("i", "<M-[>", "<Plug>(copilot-previous)")
    end,
  },
}
