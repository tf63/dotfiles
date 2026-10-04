return {
  {
    "github/copilot.vim",
    config = function()
      vim.keymap.set("i", "<Tab>", "<Plug>(copilot-accept-line)")
      vim.keymap.set("i", "<C-]>", "<Plug>(copilot-dismiss)")
      vim.keymap.set("i", "<M-]>", "<Plug>(copilot-next)")
      vim.keymap.set("i", "<M-[>", "<Plug>(copilot-previous)")
    end,
  },
}
