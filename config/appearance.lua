local Utils = require "utils"
local color = Utils.fn.color

---@diagnostic disable-next-line: undefined-field
local G = require("wezterm").GLOBAL

local config = {}

config.color_schemes = color.get_schemes()
config.color_scheme = color.get_scheme()

local theme = config.color_schemes[config.color_scheme]

-- Set background image
config.background = {
  {
    source = {
      File = '/home/talkar/Pictures/coruscant-square.png'
    },
  },
  {
    source = {
      Color =  "rgba(25, 25, 44, 0.95)"
    },
    height = '100%',
    width = '100%'
  },
}

-- Set initial size 
config.initial_cols = 200
config.initial_rows = 50


config.bold_brightens_ansi_colors = "BrightAndBold"

---char select and command palette
config.char_select_bg_color = theme.brights[6]
config.char_select_fg_color = theme.background
config.char_select_font_size = 12

config.command_palette_bg_color = theme.brights[6]
config.command_palette_fg_color = theme.background
config.command_palette_font_size = 14
config.command_palette_rows = 20

---cursor
config.cursor_blink_ease_in = "EaseIn"
config.cursor_blink_ease_out = "EaseOut"
config.cursor_blink_rate = 500
config.default_cursor_style = "BlinkingUnderline"
config.cursor_thickness = 1
config.force_reverse_video_cursor = true

config.enable_scroll_bar = true

config.hide_mouse_cursor_when_typing = true

---text blink
config.text_blink_ease_in = "EaseIn"
config.text_blink_ease_out = "EaseOut"
config.text_blink_rapid_ease_in = "Linear"
config.text_blink_rapid_ease_out = "Linear"
config.text_blink_rate = 500
config.text_blink_rate_rapid = 250

---visual bell
config.audible_bell = "SystemBeep"
config.visual_bell = {
  fade_in_function = "EaseOut",
  fade_in_duration_ms = 200,
  fade_out_function = "EaseIn",
  fade_out_duration_ms = 200,
}

---window appearance
config.window_padding = { left = 2, right = 2, top = 2, bottom = 1 }
config.integrated_title_button_alignment = "Right"
config.integrated_title_button_style = "Windows"
config.integrated_title_buttons = { "Hide", "Maximize", "Close" }

---exit behavior
config.clean_exit_codes = { 130 }
config.exit_behavior = "CloseOnCleanExit"
config.exit_behavior_messaging = "Verbose"
config.skip_close_confirmation_for_processes_named = {
  "bash",
  "sh",
  "zsh",
  "fish",
  "tmux",
  "nu",
  "cmd.exe",
  "pwsh.exe",
  "powershell.exe",
}
config.window_close_confirmation = "AlwaysPrompt"

color.set_tab_button(config, theme)

return config
