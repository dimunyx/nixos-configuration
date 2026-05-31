{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		displayManager = {
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
