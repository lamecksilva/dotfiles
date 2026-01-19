return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        accept = { auto_brackets = { enabled = true } },
        menu = { 
          draw = {
            treesitter = { "lsp" },
            columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
          }
        },
        documentation = { auto_show = true, auto_show_delay_ms = 200 },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        providers = {
          lsp = {
            name = "LSP",
            module = "blink.cmp.sources.lsp",
            score_offset = 90,
          },
          path = {
            name = "Path",
            module = "blink.cmp.sources.path",
            score_offset = 3,
          },
          snippets = {
            name = "Snippets", 
            module = "blink.cmp.sources.snippets",
            score_offset = 80,
          },
        },
      },
    },
  },
}
