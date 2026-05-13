{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./gdm.nix
		./gvfs.nix
		./blueman.nix
		./flatpak.nix
		./udisks2.nix
		./pipewire.nix
		./libinput.nix
	];
}
