{ config, lib, pkgs, pkgs-unstable, ... }:
{
	programs = {
		regreet = {
			enable = true;
			package = pkgs-unstable.regreet;
			iconTheme = {
				name = "Papirus-Dark";
				package = pkgs-unstable.papirus-icon-theme;
			};
			cursorTheme = {
				name = "material_dark_cursors";
				package = pkgs-unstable.material-cursors;
			};
			font = {
				name = "CaskaydiaCove Nerd Font";
				package = pkgs-unstable.nerd-fonts.caskaydia-cove;
				size = 12;
			};
		};
	};
}
