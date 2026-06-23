-- https://wiki.hypr.land/Configuring/Basics/Autostart/

local startup = {
	"wl-clip-persist --clipboard regular", -- Enables clipboard persistence
	"wl-paste --type text --watch cliphist store", -- Enable clipboard for text
	"wl-paste --type image --watch cliphist store", -- Enable clipboard for images
	"waybar", -- waybar
	"swaync", -- swaync
	"/usr/lib/polkit-kde-authentication-agent-1", -- Policy manager
	"hypridle", -- "Idle daemon"
	"hyprsunset",
	"hyprpaper",
	"nm-applet",
	"nwg-dock-hyprland -p left -d -w 5 -nolauncher -ml 5 -l top -hl bottom -i 38", -- dock
	'tmux setenv -g HYPRLAND_INSTANCE_SIGNATURE "$HYPRLAND_INSTANCE_SIGNATURE"',
	"~/.config/hypr/scripts/hyprpaper.zsh ~/Pictures/Papes 300",
	"steam -silent",
}

hl.on("hyprland.start", function()
	for i = 1, #startup do
		hl.exec_cmd(startup[i])
	end
end)
