return {
  {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      local gitsigns = require('gitsigns')

      -- Actions
      vim.keymap.set('n', '<leader>gs', gitsigns.stage_hunk, { desc = "Stage hunk" })
      vim.keymap.set('n', '<leader>gr', gitsigns.reset_hunk, { desc = "Reset hunk" })
      vim.keymap.set('v', '<leader>gs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { desc = "Stage hunk" })
      vim.keymap.set('v', '<leader>gr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { desc = "Reset hunk" })
      vim.keymap.set('n', '<leader>gS', gitsigns.stage_buffer, { desc = "Staget buffer" })
      vim.keymap.set('n', '<leader>gu', gitsigns.undo_stage_hunk, { desc = "Undo stage hunk" })
      vim.keymap.set('n', '<leader>gR', gitsigns.reset_buffer, { desc = "Reset buffer" })
      vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, { desc = "Preview hunk" })
      vim.keymap.set('n', '<leader>gb', function() gitsigns.blame_line{full=true} end, { desc = "Blame line" })
      vim.keymap.set('n', '<leader>gtb', gitsigns.toggle_current_line_blame, { desc = "Toogle blame current line" })
      vim.keymap.set('n', '<leader>gd', gitsigns.diffthis, { desc = "Diff this" })
      vim.keymap.set('n', '<leader>gD', function() gitsigns.diffthis('~') end, { desc = "Diff this ~" })
      vim.keymap.set('n', '<leader>gtd', gitsigns.toggle_deleted, { desc = "Toogle deleted" })

      -- Text object
      vim.keymap.set({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = "Select hunk" })
    end,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true
  },
}
