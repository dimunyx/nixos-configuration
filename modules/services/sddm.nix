{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		displayManager = {
			defaultSession = "hyprland";
			sddm = {
				enable = false;
				package = pkgs.kdePackages.sddm;
				wayland = {
					enable = true;
				};
			};
		};
	};
}
