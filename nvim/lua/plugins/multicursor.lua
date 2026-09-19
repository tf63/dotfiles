return {
  "jake-stewart/multicursor.nvim",
  branch = "1.0",
  keys = {
    {
      "<C-;><Down>",
      function()
        require("multicursor-nvim").lineAddCursor(1)
      end,
      mode = "n",
      desc = "Add cursor below",
    },
    {
      "<C-;><Up>",
      function()
        require("multicursor-nvim").lineAddCursor(-1)
      end,
      mode = "n",
      desc = "Add cursor above",
    },
  },
  config = function()
    require("multicursor-nvim").setup()
  end,
}
