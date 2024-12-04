local lsp_servers = require("lsp")

return {
  {
    "williamboman/mason.nvim",
    config = function()
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
    config = function()
      local servers = {}
      for k, _ in pairs(lsp_servers) do
        table.insert(servers, k)
      end
      require("mason-lspconfig").setup({
        ensure_installed = servers,
        automatic_installation = false,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')

      vim.api.nvim_create_autocmd('LspAttach', {
        desc = 'LSP actions',
        callback = function(event)
          vim.keymap.set({ "n", "i" }, "<C-q>", vim.lsp.buf.hover, { desc = "Open code hover", buffer = event.buf })
          vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Go to definition", buffer = event.buf })
          vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action,
            { desc = "Code actions", buffer = event.buf })
        end,
      })

      for lsp, settings in pairs(lsp_servers) do
        table.insert(settings, {
          capabilities = capabilities,
        })
        lspconfig[lsp].setup(settings)
      end
    end,
  }
}
