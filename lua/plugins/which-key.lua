return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  config = function ()
    local wk = require("which-key")
    wk.setup({
      preset = "helix", -- classic, modern, helix
    })
    wk.add({
      {"<leader>f", group="file", desc="Files" },
      {"<leader>s", group="search", desc="Search" },
      {"<leader>g", desc = "Git" },
      {"<leader>gt", desc = "Toggle" },
      {"<leader>b", desc = "Buffers" },
      {"<leader>c", desc = "Code" },
      {"<leader>cc", desc = "Comment" },
      {"<leader>ce", desc = "Errors" },
      {"<leader>cl", desc = "TODO" },
      {"<leader>D", desc = "Debug" },
      {"<leader>d", desc = "Navigate" },
      {"<leader>h", desc = "Harpoon" },
    })
  end
}
