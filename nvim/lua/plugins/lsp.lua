return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
      -- main one
      { "ms-jpq/coq_nvim", branch = "coq" },

      -- 9000+ Snippets
      { "ms-jpq/coq.artifacts", branch = "artifacts" },

      -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
      -- Need to **configure separately**
      { "ms-jpq/coq.thirdparty", branch = "3p" },
    },
    init = function()
      vim.g.coq_settings = {
        auto_start = true,
      }
    end,
    opts = {
      servers = {
        eslint = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              ".eslintrc",
              ".eslintrc.js",
              ".eslintrc.json",
              "eslint.config.js",
              "package.json"
            )(fname)
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
  -- {
  --   "mason-org/mason-lspconfig.nvim",
  --   opts = {},
  --   dependencies = {
  --     { "mason-org/mason.nvim", opts = {} },
  --     "neovim/nvim-lspconfig",
  --   },
  -- },
}
