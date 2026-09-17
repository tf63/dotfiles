return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
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
  },
}
