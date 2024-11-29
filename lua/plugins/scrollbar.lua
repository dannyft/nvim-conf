return {
  "petertriho/nvim-scrollbar",
  config = function ()
    require("scrollbar").setup({
      show = true,
      set_highlights = true,
    })
  end,
}
