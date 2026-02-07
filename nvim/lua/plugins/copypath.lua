return {
  {
    "lamecksilva/lameck-copypath.nvim",
    config = function()
      require("copypath").setup({
        default_path = "relative",
      })
    end,
  },
}
