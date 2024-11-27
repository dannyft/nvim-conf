local wk = require("which-key")
local telescope = require('telescope.builtin')

-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}


wk.add({
    {"<leader>f", group="file", desc="Files" },
    {"<leader>g", desc = "Git" },
    {"<leader>gh", desc = "Git signs" },
    {"<leader>gt", desc = "Toggle" },
    {"<leader>c", desc = "Code" },
})

-----------------
-- Normal mode --
-----------------

-- Files

vim.keymap.set('n', '<leader>fb', vim.cmd.Ex, { desc = "Open file browser" })
vim.keymap.set('n', '<leader>ft', '<cmd>NvimTreeToggle<cr>', { desc = "Toggle file tree" })
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc="Find files" })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc="Live grep" })
vim.keymap.set('n', '<leader>b', telescope.buffers, { desc="Buffers" })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc="Help tags" })
vim.keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc="Undo tree" })

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)
vim.keymap.set('n', '<A-Right>', '<cmd>bnext<cr>', opts)
vim.keymap.set('n', '<A-Left>', '<cmd>bprevious<cr>', opts)
vim.keymap.set('n', '<C-z>', 'u', opts)

vim.keymap.set('n', '<C-/>', '<cmd>FloatermToggle<cr>', opts)

-- GIT
vim.keymap.set('n', '<leader>gl', '<cmd>FloatermNew --height=0.9 --width=0.9 --title=LazyGit lazygit<cr>', { desc = "Open LazyGit" })

-- windows
vim.keymap.set("n", "<leader>w", "<c-w>", { desc = "Windows", remap = true })
vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })

-- tabs
vim.keymap.set("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
vim.keymap.set("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
vim.keymap.set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- better up/down
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
