return {
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                icons = true,
            })

            vim.keymap.set("n", "<leader>cee", function()
                require("trouble").toggle()
            end, { desc = "Show errors" })

            vim.keymap.set("n", "<leader>cen", function()
                require("trouble").next({skip_groups = true, jump = true});
            end, { desc = "Show next error" })

            vim.keymap.set("n", "<leader>cep", function()
                require("trouble").previous({skip_groups = true, jump = true});
            end, { desc = "Show previous error" })
        end
  }
}
