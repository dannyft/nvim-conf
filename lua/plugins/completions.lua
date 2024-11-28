return {
  -- Vscode-like pictograms
	{
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
	},
	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
		config = function()
      local cmp = require("cmp")
      cmp.setup({
        sources = {
          { name = 'nvim_lsp' },    -- For nvim-lsp
          { name = 'luasnip' },     -- For luasnip user
          -- { name = 'buffer' },      -- For buffer word completion
          { name = 'path' },        -- For path completion
        },
        completion = {
          autocomplete = false,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        snippet = {
          expand = function(args)
              require('luasnip').lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs( -4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ['<C-k>'] = cmp.mapping.select_prev_item(),
          ['<C-j>'] = cmp.mapping.select_next_item(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<esc>'] = cmp.mapping(function (fallback)
            if cmp.visible() then
              cmp.abort()
            else
              fallback()
            end
          end, {"i", "c"})
        }),
        formatting = {
          fields = { 'abbr', 'menu' },
          format = function(entry, vim_item)
              vim_item.menu = ({
                  nvim_lsp = '[Lsp]',
                  luasnip = '[Luasnip]',
                  -- buffer = '[File]',
                  path = '[Path]',
              })[entry.source.name]
              return vim_item
          end,
        },
      }, {
        { name = "buffer" },
      })
		end,
	},
	-- Code snippet engine
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
	},
}
