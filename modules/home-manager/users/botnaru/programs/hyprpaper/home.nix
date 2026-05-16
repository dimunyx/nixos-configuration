{ pkgs, ... }:
{
	services = {
		hyprpaper = {
			enable = true;
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
