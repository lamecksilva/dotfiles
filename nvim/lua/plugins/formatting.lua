-- Formatação usando padrões LazyVim
-- Go formatting será gerenciado pelo extra lang.go
return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
      },
      formatters = {
        prettier = {
          -- Usar configuração local do projeto quando disponível
          condition = function(ctx)
            return vim.fs.find({ ".prettierrc", ".prettierrc.json", ".prettierrc.js", "prettier.config.js" }, {
              path = ctx.filename,
              upward = true,
            })[1]
          end,
        },
      },
    },
  },
}
