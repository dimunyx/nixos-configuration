{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		displayManager = {
			defaultSession = "hyprland";
			sddm = {
				enable = true;
				package = pkgs.kdePackages.sddm;
				wayland = {
					enable = true;
				};
			};
		};
	};
}
