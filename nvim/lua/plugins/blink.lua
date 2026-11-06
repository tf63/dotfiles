-- lua/plugins/blink.lua
return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-y>"] = false,
      },
      enabled = function()
        return vim.bo.filetype ~= "markdown"
      end,
    },
  },
}
