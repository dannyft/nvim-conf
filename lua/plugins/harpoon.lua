return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function ()
    local harpoon = require("harpoon")
    if not vim.fn.has("win32") then
      harpoon:setup({})
    end

    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
            table.insert(file_paths, item.value)
        end

        require("telescope.pickers").new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
                results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
        }):find()
    end

    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Add to harpoon" })
    vim.keymap.set("n", "<leader>hr", function() harpoon:list():remove() end, { desc = "Remove from harpoon" })
    vim.keymap.set("n", "<leader>hw", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })
    vim.keymap.set("n", "<C-h>", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })

    vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "Select file 1" })
    vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(1) end, { desc = "Select file 2" })
    vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(1) end, { desc = "Select file 2" })
    vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(1) end, { desc = "Select file 3" })
    vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(1) end, { desc = "Select file 4" })
  end,
}
