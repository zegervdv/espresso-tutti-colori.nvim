local M = {}

function M.setup(config)
  local colors = {
    none = 'NONE',
    fg = '#000000',
    bg = '#FBFAFC',

    cursor = '#dbebff',
    cursorline = '#ffffff',

    grey0 = '#a1a1a1',
    grey1 = '#222222',
    grey2 = '#888888',

    blue = '#2f6f9f',
    blue_bg = '#f4faff',
    bold_blue = '#0b51a6',
    light_blue = '#4f9eeb',
    teal = '#4f9fcf',

    dark_purple = '#3a1d72',
    purple = '#4e279a',
    light_purple = '#7653c1',
    purple_bg = '#f3f2ff',

    red = '#d44950',
    soft_red = '#cf4f5f',
    dark_red = '#d71707',

    olive_green = '#7b8c4d',
    green = '#73b00a',
    light_green = '#e8ffd5',

    error_fg = '#f93232',
    error_bg = '#facbcb',
    warning_fg = '#e9a700',
    warning_bg = '#faf1da',

    diff_add_bg = '#e8ffd5',
    diff_remove_bg = '#f93232',
    diff_text_bg = '#81c7ff',

    visual = '#dbebff',
    search = '#fbe9ad',

    non_text_fg = '#e2e8ef',
    non_text_bg = '#fefeff',

    match_bg = '#d4e9fa',

    line = '#d1d1d1',

    status = '#e3ebf1',
  }

  return colors
end

return M
