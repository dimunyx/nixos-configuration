{ config, lib, pkgs, pkgs-unstable, ... }:
{
	environment = {
		systemPackages = (with pkgs; [
			tree
			wget
			git
			brightnessctl
			playerctl
		]) ++ (with pkgs-unstable; [
			fastfetch
			cava
			cmatrix
			cpufetch
			nautilus
			kitty
			nwg-look
			xdg-user-dirs
			unzip
			hyprpaper
			rofi
			hyprshutdown
			swaynotificationcenter
			libnotify
			grim
			slurp
			gnome-calculator
			hyprsysteminfo
			hyprland-qt-support
			gammastep
			gcc
			wl-clipboard
			cliphist
			wttrbar
			pipes
			udiskie
			gnome-disk-utility
			hyprpicker
			mpv
			gpu-screen-recorder
			libreoffice
			opencode
			jq
		]);
	};
}
