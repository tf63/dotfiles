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
  },
}
