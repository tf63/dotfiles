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
      image = {
        enable = true,
      },
    },
    init = function()
      vim.api.nvim_set_hl(0, "SnacksPickerGitStatusUntracked", {
        fg = "#a6e3a1",
      })

      vim.api.nvim_set_hl(0, "SnacksPickerPathHidden", {
        fg = "#9999bb",
      })

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
