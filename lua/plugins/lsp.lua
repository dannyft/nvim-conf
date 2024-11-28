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
        ensure_installed = { "lua_ls", "phpactor", "vtsls" },
        automatic_installation = false,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      local util = require('lspconfig.util')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')

      vim.api.nvim_create_autocmd('LspAttach', {
        desc = 'LSP actions',
        callback = function(event)
          vim.keymap.set({"n", "i"}, "<C-q>", vim.lsp.buf.hover, { desc = "Open code hover", buffer = event.buf })
          vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Go to definition", buffer = event.buf })
          vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions", buffer = event.buf })
        end,
      })

      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.vtsls.setup({ capabilities = capabilities })

      lspconfig.phpactor.setup({
        capabilities = capabilities,
        root_dir = function(pattern)
          local cwd = vim.uv.cwd()
          local root = util.root_pattern('composer.json', '.git', '.phpactor.json', '.phpactor.yml')(pattern)
            return util.path.is_descendant(cwd, root) and cwd or root
          end,
      })
    end,
  }
}
