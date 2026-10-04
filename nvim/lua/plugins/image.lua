return {
  {
    "3rd/image.nvim",
    ft = { "markdown" },
    build = false,

    cond = function()
      if vim.fn.executable("magick") == 0 and vim.fn.executable("convert") == 0 then
        vim.notify("image.nvim requires ImageMagick. Run: brew install imagemagick", vim.log.levels.WARN)
        return false
      end
      return true
    end,

    opts = {
      backend = "kitty",
      processor = "magick_cli",

      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = true,
          only_render_image_at_cursor = false,
          floating_windows = false,
        },
      },

      max_height_window_percentage = 50,
    },
  },
}
