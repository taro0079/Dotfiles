local wezterm = require 'wezterm';
local mac = wezterm.target_triple:find("darwin")
local linux = wezterm.target_triple:find("linux")

if mac then
  return {
    font = wezterm.font_with_fallback {
      { family = 'VictorMono Nerd Font', weight = "Bold",    italic = false },
      { family = 'Dank Mono',            weight = "Regular", italic = true },
      { family = 'HackGen Console NF',   weight = "Regular" }
    },
    -- disable_default_key_bindings = true,
    font_size = 14,
    keys = {
      { key = 'n', mods = 'OPT', action = wezterm.action.ToggleFullScreen },
      { key = '8', mods = 'CTRL', action = wezterm.action.PaneSelect },
      { key = "v", mods = "OPT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
      { key = "s", mods = "OPT", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) }
    },
    color_scheme = "tokyonight",
    send_composed_key_when_right_alt_is_pressed = false,
    hide_tab_bar_if_only_one_tab = true,
    window_padding = {
      left = 0,
      right = 0,
      top = 0,
      bottom = 0
    },
    adjust_window_size_when_changing_font_size = false,
    front_end = "WebGpu",
  }
elseif linux then
  return {
    color_scheme = "Catppuccin",
    enable_tab_bar = false,
    font = wezterm.font('BlexMono Nerd Font', { weight = 'Medium', italic = false }),
    font_size = 11,
  }
end
