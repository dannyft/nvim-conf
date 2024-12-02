return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  --ft = "markdown",
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/Documents/Notes/Notes/*.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/Documents/Notes/Notes/*.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
     {
        name = "Notes",
        path = "~/Documents/Notes/Notes",
      },
    },
  },
}
