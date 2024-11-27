return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,
        styles = {
           sidebars = "transparent",
           floats = "transparent",
        },
    },
  config = function ()
    local colorscheme = 'tokyonight'
    local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
    if not is_ok then
      vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    end
  end
}
