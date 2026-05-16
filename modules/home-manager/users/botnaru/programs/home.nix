{ pkgs, pkgs-unstable, ... }:
{
	imports = [
		./cava/home.nix
		./kitty/home.nix
		./hyprlock/home.nix
		./hyprpaper/home.nix
		./fastfetch/home.nix
		./gammastep/home.nix
	];
}
