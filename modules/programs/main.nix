{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./fish.nix
		./nano.nix
		./neovim.nix
		./waybar.nix
		./starship.nix
		./hyprlock.nix
		./hyprland.nix
	];
}
