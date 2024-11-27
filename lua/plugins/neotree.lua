return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", { desc = "Open file tree" })
    vim.keymap.set("n", "<leader>fb", ":Neotree filesystem reveal float<CR>", { desc = "Brows files" })
		vim.keymap.set("n", "<leader>bt", ":Neotree buffers reveal float<CR>", { desc = "Open buffer tree" })
  end,
}
