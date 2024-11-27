return {
  {
    "williamboman/mason.nvim",
    config = function ()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function ()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
        automatic_installation = false,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })


      vim.keymap.set("n", "<leader> ", vim.lsp.buf.hover, { desc = "Open code hover" })
      vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
    end,
  }
}
