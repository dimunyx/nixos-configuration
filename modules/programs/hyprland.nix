{ config, lib, pkgs, pkgs-unstable, ... }:
{
	programs = {
		hyprland = {
			enable = true;
			package = pkgs-unstable.hyprland;
			portalPackage = pkgs-unstable.xdg-desktop-portal-hyprland;
			xwayland = {
				enable = true;
			};
		};
	};
}
