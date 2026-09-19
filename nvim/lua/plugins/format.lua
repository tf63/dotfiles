return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "oxfmt" },
        javascriptreact = { "oxfmt" },
        typescript = { "oxfmt" },
        typescriptreact = { "oxfmt" },

        json = { "oxfmt" },
        jsonc = { "oxfmt" },
        json5 = { "oxfmt" },

        css = { "oxfmt" },
        scss = { "oxfmt" },
        less = { "oxfmt" },

        graphql = { "oxfmt" },
        yaml = { "oxfmt" },
        toml = { "oxfmt" },

        html = { "oxfmt" },
        vue = { "oxfmt" },
        svelte = { "oxfmt" },

        markdown = { "oxfmt" },
        mdx = { "oxfmt" },

        handlebars = { "oxfmt" },
        ember = { "oxfmt" },
        mjml = { "oxfmt" },
      },
    },
  },
}
