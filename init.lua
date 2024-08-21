vim.api.nvim_exec("language en_US", true)

require('options')
require('plugins_init')
require('keymaps')
require('colorscheme')
require('lsp')

require('config.nvim-cmp')
require('config.lualine-nvim')
require('config.telescope')
require('config.nvim-tree')
require('config.gitsigns')
require('config.neogit')
