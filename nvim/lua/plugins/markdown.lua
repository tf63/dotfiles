return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {},
        ["markdown.mdx"] = {},
      },
      -- Markdown lint is disabled.
      -- linters = {
      --   ["markdownlint-cli2"] = {
      --     args = {
      --       "-",
      --       "--config",
      --       vim.fn.stdpath("config") .. "/.markdownlint-cli2.yaml",
      --       "--",
      --     },
      --   },
      -- },
    },
  },
}
