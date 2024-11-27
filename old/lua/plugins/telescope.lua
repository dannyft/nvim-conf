return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opt = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fu', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        -- require('config.telescope')
    end
}