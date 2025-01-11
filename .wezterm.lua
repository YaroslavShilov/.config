-- Pull in the wezterm API
local wezterm = require('wezterm')

-- This will hold the configuration.
local config = wezterm.config_builder()

--config.default_prog = { 'pwsh.exe', '-NoLogo' }
config.default_prog = { "C:/Users/user/AppData/Local/Microsoft/WindowsApps/Microsoft.PowerShell_8wekyb3d8bbwe/pwsh.exe", '-NoLogo' }
--config.default_cwd = '/Desktop'


-- Font
config.font = wezterm.font('JetBrainsMono Nerd Font')
config.font_size = 12
config.line_height = 1.1
--config.font = wezterm.font('Fira Code'),

-- Colors
config.colors = {
    cursor_bg = 'white',
    cursor_border = 'white'
}
--config.default_cursor_style = 'BlinkingBar',

-- Appearance
config.enable_tab_bar = false -- hide tabs
config.window_decorations = 'RESIZE' -- disable the title bar but enable the resizable border
-- 'RESIZE' = use ctrl + shift for moving the window
config.window_padding = {
    left = 2,
    right = 2,
    top = 0,
    bottom = 0,
}


-- Background
config.background = {
    {
        source = {
            File = 'C:/Users/user/Desktop/Others/wallpapers/wallpapers/dune.jpg'
        },
        hsb = {
            hue = 1.0,
            saturation = 1.02,
            brightness = 0.25,
        },
        width = '100%',
        height = '100%',
    },
    {
        source = {
            Color = '#282C34'
        },
        width = '100%',
        height = '100%',
        opacity = 0.8
    }
}

-- Miscellaneous
config.max_fps = 75
config.prefer_egl = true -- default is true

-- Scheme
--config.color_scheme = 'vimbones'
--config.color_scheme = 'NvimDark'
--config.color_scheme = 'DWM rob (terminal.sexy)'
config.color_scheme = 'Dracula (Official)'
--config.color_scheme = 'Dracula (base16)'
--config.color_scheme = 'OneHalfDark'
--config.color_scheme = 'Outrun Dark (base16)'

config.window_close_confirmation = 'NeverPrompt' -- don't show confirmation when close window
config.automatically_reload_config = true

-- and finally, return the configuration to wezterm
return config