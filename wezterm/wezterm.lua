local wezterm = require 'wezterm'

return {
  color_scheme = 'Catppuccin Mocha',
  colors = {
    cursor_bg = "#A6ACCD",
    cursor_border = "#A6ACCD",
    cursor_fg = "#1B1E28",
  },

  enable_scroll_bar = true,

  audible_bell = "Disabled",

  native_macos_fullscreen_mode = true,
  font = wezterm.font('JetBrainsMono Nerd Font'),
  font_size = 15,
  window_background_opacity = 0.99,
  use_fancy_tab_bar = false,
  tab_max_width = 999999,
  window_padding = {
    left = 30,
    right = 30,
    top = 30,
    bottom = 30,
  },

  scrollback_lines = 100000,
}
