local wezterm = require 'wezterm';
local mac = wezterm.target_triple:find("darwin")
local linux = wezterm.target_triple:find("linux")

if mac then
  return {
    font = wezterm.font_with_fallback{
      {family='VictorMono Nerd Font', weight="Bold", italic=false},
      {family='Dank Mono', weight="Regular", italic=true},
      {family='HackGen Console NF', weight="Regular"}
    },
    font_size = 14,
    -- color_scheme = "Catppuccin",
    color_scheme = "tokyonight",
    send_composed_key_when_right_alt_is_pressed = false,
    enable_tab_bar = false,
    -- colors = {
    --
    --   foreground = "#c6c8d1",
    --   background = "#161821",
    --   cursor_bg = "#c6c8d1",
    --   cursor_border = "#c6c8d1",
    --   cursor_fg = "#161821",
    --   selection_bg = "#c6c8d1",
    --   selection_fg = "#161821",
    --   ansi = { "#1e2132", "#e27878", "#b4be82", "#e2a478", "#84a0c6", "#a093c7", "#89b8c2", "#c6c8d1" },
    --   brights = { "#6b7089", "#e98989", "#c0ca8e", "#e9b189", "#91acd1", "#ada0d3", "#95c4ce", "#d2d4de" }
    --
    -- },
    -- leader = { key = 'a', mods = 'CTRL', timeout_milliseconds=1000 },
    -- keys = {
    --   { key = "k", mods = "ALT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
    --   {
    --     key = '|',
    --     mods = 'LEADER',
    --     action = wezterm.action.SplitPane {
    --       direction = 'Right',
    --       size = { Percent = 50 }
    --     }
    --   }
    --
    -- }
    --

  }
elseif linux then
  return {
    color_scheme = "Catppuccin",
    enable_tab_bar = false,
    font = wezterm.font('BlexMono Nerd Font', { weight = 'Medium', italic = false }),
    font_size = 11,
  }
end
