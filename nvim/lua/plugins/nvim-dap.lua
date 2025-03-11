return {
  "rcarriga/nvim-dap-ui",
  opts = function(_, opts)
    opts.layouts = {
      {
        elements = {
          { id = "scopes", size = 0.45 },
          { id = "breakpoints", size = 0.35 },
          -- { id = "stacks", size = 0.25 },
          -- Remova o painel de watch excluindo `{ id = "watches", size = 0.25 }`
        },
        size = 35, -- Largura da sidebar
        position = "left",
      },
      {
        elements = {
          { id = "console", size = 0.9 }, -- Aumenta o tamanho do console
        },
        size = 15, -- Altura do console
        position = "bottom",
      },
    }
  end,
}
