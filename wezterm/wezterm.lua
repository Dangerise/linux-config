local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.default_prog = { "/usr/bin/fish" }

config.font = wezterm.font("JetBrains Mono", { font_size = 10 })

config.keys = {
    { -- 控制左右移动面板
        key = 'h',
        mods = 'ALT',
        action = wezterm.action {
            ActivateTabRelative = -1
        }
    },
    {
        key = 'l',
        mods = 'ALT',
        action = wezterm.action {
            ActivateTabRelative = 1
        }
    },
    { -- Delete Tab
        key = 'w',
        mods = 'ALT',
        action = wezterm.action.CloseCurrentTab {
            confirm = true
        }
    },
    {
        -- New Tab
        key = "n",
        mods = "ALT",
        action = wezterm.action.SpawnTab 'DefaultDomain'
    }
}

return config
