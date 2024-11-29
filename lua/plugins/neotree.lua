return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
--    "3rd/image.nvim",
  },
  config = function ()
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      window = {
        position = "float",
      }
    })

    vim.keymap.set("n", "<leader>ft", ":Neotree filesystem reveal left<CR>", { desc = "Open file tree" })
    vim.keymap.set("n", "<leader>fb", ":Neotree filesystem reveal float<CR>", { desc = "Browse files" })
    vim.keymap.set("n", "<C-o>", ":Neotree filesystem reveal float<CR>", { desc = "Browse files" })
		vim.keymap.set("n", "<leader>bb", ":Neotree buffers reveal float<CR>", { desc = "Open buffer tree" })
  end,
}
