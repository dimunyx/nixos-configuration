{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./hostname.nix
		./firewall.nix
		./networkmanager.nix
	];
}
