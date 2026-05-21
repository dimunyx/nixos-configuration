{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./hostname.nix
		./networkmanager.nix
	];
}
