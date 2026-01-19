return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Lua
        "stylua",
        "lua-language-server",
        
        -- Shell
        "shellcheck",
        "shfmt",
        "bash-language-server",
        
        -- Python
        "flake8",
        "pyright",
        "black",
        
        -- JavaScript/TypeScript
        "prettier",
        "eslint_d",
        "typescript-language-server",
        "vtsls",
        
        -- Go
        "gopls",
        "gofumpt",
        "goimports",
        "golangci-lint",
        
        -- JSON/YAML
        "json-lsp",
        "yaml-language-server",
        
        -- Docker
        "dockerfile-language-server",
        "docker-compose-language-service",
      },
    },
  },
}
