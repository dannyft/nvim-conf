return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("todo-comments").setup()
    vim.keymap.set('n', '<leader>cll', ":TodoTelescope<CR>", { desc = "Search todos" })
    vim.keymap.set('n', '<leader>clt', ":Trouble todo focus=true<CR>", { desc = "Open todo list (Trouble)" })
    vim.keymap.set('n', '<leader>clq', ":TodoQuickFix<CR>", { desc = "Quickfix" })
    vim.keymap.set('n', '<leader>clo', ":TodoLocList<CR>", { desc = "Location list" })
  end
}
