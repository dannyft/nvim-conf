return {
  "nvimtools/none-ls.nvim",
  config = function ()
    local nls = require("null-ls")
    nls.setup({
      sources = {}
    })

    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format code" })
  end,
}
