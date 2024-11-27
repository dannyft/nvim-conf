return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
      local ts = require('telescope.builtin')
      vim.keymap.set('n', '<leader>sf', ts.find_files, { desc="Find files" })
      vim.keymap.set('n', '<C-f>', ts.find_files, { desc="Find files" })
      vim.keymap.set('n', '<leader>sg', ts.live_grep, { desc="Live grep" })
      vim.keymap.set('n', '<leader>sh', ts.help_tags, { desc="Help tags" })
      vim.keymap.set('n', '<leader>sb', ts.buffers, { desc="Buffers" })
      vim.keymap.set('n', '<C-e>', ts.buffers, { desc="Buffers" })
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function ()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({})
          }
        }
      })

      require("telescope").load_extension("ui-select")
    end,
  }
}
