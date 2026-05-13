{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		displayManager = {
			sddm = {
				enable = true;
				package = pkgs-unstable.kdePackages.sddm;
				wayland = {
					enable = true;
				};
			};
		};
		defaultSession = "hyprland";
	};
}
