return {
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                -- icons = true,
            })

            vim.keymap.set("n", "<leader>cew", "<cmd>Trouble<cr>", { desc = "Open Trouble menu" })
            vim.keymap.set("n", "<leader>cee", "<cmd>Trouble diagnostics toggle focus=true<cr>", { desc = "Diagnostics (Trouble)" })
            vim.keymap.set("n", "<leader>ceo", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
            vim.keymap.set("n", "<leader>ceq", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
            vim.keymap.set("n", "<leader>cel", "<cmd>Trouble lsp toggle<cr>", { desc = "LSP Definitions / references / ... (Trouble)" })
            vim.keymap.set("n", "<leader>ceb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
        end
  }
}
