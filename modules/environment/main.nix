{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./systemPackages.nix
		./sessionVariables.nix
	];
}
