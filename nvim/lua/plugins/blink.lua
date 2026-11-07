-- lua/plugins/blink.lua
return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-y>"] = false,
      },
      enabled = function()
        local disabled_filetypes = {
          markdown = true,
          toml = true,
          yaml = true,
          json = true,
        }

        return not disabled_filetypes[vim.bo.filetype]
      end,
    },
  },
}
