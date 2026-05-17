{ pkgs, pkgs-unstable, ... }:
{
	services = {
		hyprpaper = {
			enable = true;
			package = pkgs-unstable.hyprpaper;
			settings = {
				wallpaper = {
					monitor = "";
					path = "/home/botnaru/.config/hypr/wallpaper/NixOS.png";
				};
				splash = false;
			};
		};
	};
}
