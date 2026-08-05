-- Pull in the wezterm API
local wezterm = require("wezterm")
-- This will hold the configuration.
local config = wezterm.config_builder()
config.enable_wayland = true
-- This is where you actually apply your config choices
config.inactive_pane_hsb = {
	saturation = 0.75,
	brightness = 0.75,
}

-- For example, changing the color scheme:
-- config.color_scheme = "Catppuccin Mocha (Gogh)"
config.color_scheme = "Tokyo Night (Gogh)"
config.font = wezterm.font_with_fallback({
	"Hasklig",
	"Symbols Nerd Font Mono",
  "Symbols Nerd Font",
})
config.warn_about_missing_glyphs = false
config.font_size = 18
config.line_height = 1.0

config.window_background_opacity = 0.80
config.macos_window_background_blur = 20
--config.window_decorations = "TITLE | RESIZE"
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}
config.enable_scroll_bar = true
config.scrollback_lines = 5000
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true
config.colors = {
	tab_bar = {
		-- The color of the strip that goes along the top of the window
		-- (does not apply when fancy tab bar is in use)
		background = '#24283b', -- Tokyonight Background
		-- background = '#11111b',--CatppuccinMocha Crust

		-- The active tab is the one that has focus in the window
		active_tab = {
			-- The color of the background area for the tab
			bg_color = '#7aa3f6', -- Tokyonight green
			-- bg_color = '#89b4fa', --Catppuccin Blue
			-- The color of the text for the tab
			fg_color = '#24283b',
			-- fg_color = '#11111b',--CatppuccinMocha Crust

			-- Specify whether you want "Half", "Normal" or "Bold" intensity for the
			-- label shown for this tab.
			-- The default is "Normal"
			intensity = 'Normal',

			-- Specify whether you want "None", "Single" or "Double" underline for
			-- label shown for this tab.
			-- The default is "None"
			underline = 'None',

			-- Specify whether you want the Mocha text to be italic (true) or not (false)
			-- for this tab.  The default is false.
			italic = false,

			-- Specify whether you want the text to be rendered with strikethrough (true)
			-- or not for this tab.  The default is false.
			strikethrough = false,
		},

		-- Inactive tabs are the tabs that do not have focus
		inactive_tab = {
			bg_color = '#24283b', -- Tokyonight Background
			-- bg_color = '#11111b',--CatppucinMocha Crust
			fg_color = '#dcae67', -- Tokyonight gold
			-- fg_color = '#f2cdcd',--CatpuccinMocha Flamingo

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `inactive_tab`.
		},

		-- You can configure some alternate styling when the mouse pointer
		-- moves over inactive tabs
		inactive_tab_hover = {
			-- bg_color = '#f2cdcd',--CatppuccinMocha Flamingo
			bg_color = '#dcae67',
			-- fg_color = '#11111b',--CatppuccinMocha Crust
			fg_color = '#24283b',
			italic = true,

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `inactive_tab_hover`.
		},

		-- The new tab button that let you create new tabs
		new_tab = {
			-- bg_color = '#11111b',--CatppuccinMocha Crust
			bg_color = '#24283b',
			-- fg_color = '#f2cdcd',--CatppuccinMocha Flamingo
			fg_color = '#dcae67',
			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `new_tab`.
		},

		-- You can configure some alternate styling when the mouse pointer
		-- moves over the new tab button
		new_tab_hover = {
			-- bg_color = '#f2cdcd',--CatppuccinMocha Flamingo
			bg_color = '#dcae67',
			-- fg_color = '#11111b',--CatppuccinMocha Crust
			fg_color = '#24283b',
			italic = true,

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `new_tab_hover`.
		},
	},
}
-- multiplexing
config.keys = {
	-- splits
	{
		key = '|',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
	},
	{
		key = '_',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
	},
	-- Rotation
	{
		key = 'r',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.RotatePanes 'Clockwise',
	},
	{
		key = 'a',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.RotatePanes 'CounterClockwise',
	},
	-- navigation
	{
		key = 'h',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.ActivatePaneDirection 'Left',
	},
	{
		key = 'j',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.ActivatePaneDirection "Down",
	},
	{
		key = 'k',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.ActivatePaneDirection "Up",
	},
	{
		key = 'l',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.ActivatePaneDirection "Right",
	},
	-- resize panes
	{
		key = 'UpArrow',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.AdjustPaneSize { "Up", 5 },
	},
	{
		key = 'RightArrow',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.AdjustPaneSize { "Right", 5 },
	},
	{
		key = 'DownArrow',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.AdjustPaneSize { "Down", 5 },
	},
	{
		key = 'LeftArrow',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.AdjustPaneSize { "Left", 5 },
	},
	-- Navigate tabs
	{
		key = "b",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "n",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(1),
	},
	-- create tab
	{
		key = 'k',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SpawnTab "CurrentPaneDomain",
	},
	-- close pane
	{
		key = 'x',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.CloseCurrentPane { confirm = false },
	},
}
-- and finally, return the configuration to wezterm
return config
