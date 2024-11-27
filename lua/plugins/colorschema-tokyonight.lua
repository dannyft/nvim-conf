return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function ()
    require("tokyonight").setup({
      style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
      light_style = "night", -- The theme is used when the background is set to light_style
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
      sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
      day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
      dim_inactive = true, -- dims inactive windows
      lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
    })

    local colorscheme = 'tokyonight'
    local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
    if not is_ok then
      vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    end
  end
}
