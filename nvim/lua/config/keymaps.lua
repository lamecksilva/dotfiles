-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Git Blame keymaps
vim.keymap.set("n", "<leader>gB", function()
  require("gitsigns").blame_line({ full = true })
end, { desc = "Git Blame Line (Full)" })

vim.keymap.set("n", "<leader>gp", function()
  require("gitsigns").preview_hunk()
end, { desc = "Preview Git Hunk" })
