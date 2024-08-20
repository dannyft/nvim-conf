vim.api.nvim_exec("language en_US", true)

require('options')
require('keymaps')
require('plugins_init')
require('colorscheme')
require('lsp')

require('config.nvim-cmp')
require('config.lualine-nvim')
require('config.telescope')
require('config.nvim-tree')
require('config.gitsigns')
require('config.neogit')
