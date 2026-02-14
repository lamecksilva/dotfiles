return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(".eslintrc", ".eslintrc.js", ".eslintrc.json", "eslint.config.js", "package.json")(fname)
          end,
        },
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic",
                autoImportCompletions = true,
              },
            },
          },
        },
        lua_ls = {
          settings = {
            Lua = {
              completion = {
                callSnippet = "Replace",
                keywordSnippet = "Replace",
              },
            },
          },
        },
      },
    },
  },
}
