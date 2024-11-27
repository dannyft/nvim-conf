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
    wk.add({
      {"<leader>f", group="file", desc="Files" },
      {"<leader>s", group="search", desc="Search" },
      {"<leader>g", desc = "Git" },
      {"<leader>b", desc = "Buffers" },
      {"<leader>gh", desc = "Git signs" },
      {"<leader>gt", desc = "Toggle" },
      {"<leader>c", desc = "Code" },
      {"<leader>d", desc = "Debug" },
    })
  end
}
