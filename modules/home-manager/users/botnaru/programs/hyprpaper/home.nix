{ pkgs, ... }:
{
	services = {
		hyprpaper = {
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
