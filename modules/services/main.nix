{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./gvfs.nix
		./sddm.nix
		./blueman.nix
		./flatpak.nix
		./udisks2.nix
		./pipewire.nix
		./libinput.nix
		./power-profiles-daemon.nix
	];
}
