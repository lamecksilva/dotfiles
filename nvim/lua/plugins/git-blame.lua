return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol",
        delay = 300,
        ignore_whitespace = false,
      },
      current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
    },
    config = function(_, opts)
      require("gitsigns").setup(opts)
      
      -- Configurar cores mais claras para git blame
      vim.api.nvim_set_hl(0, "GitSignsCurrentLineBlame", {
        fg = "#a6adc8", -- Cor mais clara (catppuccin text)
        bg = "NONE",
        italic = true,
      })
    end,
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = {
      enabled = false,
      message_template = " <summary> • <date> • <author>",
      date_format = "%m-%d-%Y %H:%M:%S",
      virtual_text_column = 1,
      highlight_group = "GitBlameVirtual",
    },
    config = function(_, opts)
      require("gitblame").setup(opts)
      
      -- Cor mais clara para git-blame plugin
      vim.api.nvim_set_hl(0, "GitBlameVirtual", {
        fg = "#89b4fa", -- Azul claro (catppuccin blue)
        bg = "NONE",
        italic = true,
      })
    end,
    keys = {
      { "<leader>gb", "<cmd>GitBlameToggle<cr>", desc = "Toggle Git Blame" },
    },
  },
}
