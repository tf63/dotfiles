return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        layout = {
          layout = {
            width = 25,
          },
        },
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            follow_file = true,
          },
          grep = {
            hidden = true,
          },
          files = {
            hidden = true,
          },
        },
      },
    },
    init = function()
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          if vim.fn.argc() == 0 then
            require("snacks").explorer()
          end
        end,
      })
    end,
  },
}
