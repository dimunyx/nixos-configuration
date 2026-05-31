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
			cmatrix
			cpufetch
			nautilus
			nwg-look
			xdg-user-dirs
			unzip
			hyprshutdown
			swaynotificationcenter
			libnotify
			grim
			slurp
			gnome-calculator
			hyprsysteminfo
			hyprland-qt-support
			gcc
			wl-clipboard
			cliphist
			wttrbar
			pipes
			udiskie
			gnome-disk-utility
			hyprpicker
			gpu-screen-recorder
			libreoffice
			opencode
			rofi
			hyprpaper
			theclicker
			gammastep
			kitty
			cava
			fastfetch
			tty-clock
		]);
	};
}
