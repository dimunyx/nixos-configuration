{ pkgs, pkgs-unstable, ... }:
{
	imports = [
		./nh/home.nix
		./cava/home.nix
		./kitty/home.nix
		./hyprlock/home.nix
		./fastfetch/home.nix
	];
}
