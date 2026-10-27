local mainMod = _G.mainMod or "SUPER"

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

--hl.bind(mainMod .. " + SHIFT + Left", hl.dsp.window.resize({ x = -50, y = 0, relative = true }), { repeating = true })
--hl.bind(mainMod .. " + SHIFT + Right", hl.dsp.window.resize({ x = 50, y = 0, relative = true }), { repeating = true })
--hl.bind(mainMod .. " + SHIFT + Up", hl.dsp.window.resize({ x = 0, y = -50, relative = true }), { repeating = true })
--hl.bind(mainMod .. " + SHIFT + Down", hl.dsp.window.resize({ x = 0, y = 50, relative = true }), { repeating = true })

--hl.bind(mainMod .. " + CTRL + Left", hl.dsp.window.move({ direction = "l" }))
--hl.bind(mainMod .. " + CTRL + Right", hl.dsp.window.move({ direction = "r" }))
--hl.bind(mainMod .. " + CTRL + Up", hl.dsp.window.move({ direction = "u" }))
--hl.bind(mainMod .. " + CTRL + Down", hl.dsp.window.move({ direction = "d" }))

--hl.bind(mainMod .. " + Left", hl.dsp.focus({ direction = "left" }))
--hl.bind(mainMod .. " + Right", hl.dsp.focus({ direction = "right" }))
--hl.bind(mainMod .. " + Up", hl.dsp.focus({ direction = "up" }))
--hl.bind(mainMod .. " + Down", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + ALT + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.float({ action = "toggle" }))

hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("pgrep -x hyprsunset && pkill -x hyprsunset || hyprsunset -t 4500"))

--hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.config/hypr/scripts/random-wallpaper.sh"))
hl.bind("XF86PowerOff", hl.dsp.exec_cmd("serpantinum lock"), { locked = true })
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("serpantinum lock"), { repeating = true, locked = true })

hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("alacritty -e yazi"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("thunar"))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd("alacritty"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("obsidian"))

hl.bind("SUPER + W", function()
	hl.exec_cmd("~/.config/hypr/scripts/toggle-hyprpaper.sh")
end)

hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("pgrep -x waybar && pkill -x waybar || waybar"))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
