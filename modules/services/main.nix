{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./ly.nix
		./gvfs.nix
		./blueman.nix
		./flatpak.nix
		./udisks2.nix
		./pipewire.nix
		./libinput.nix
		./power-profiles-daemon.nix
	];
}
