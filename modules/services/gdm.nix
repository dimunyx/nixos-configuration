{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		displayManager = {
			gdm = {
				enable = true;
				wayland = true;
			};
			defaultSession = "hyprland";
		};
	};
}
