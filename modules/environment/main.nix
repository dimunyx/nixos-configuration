{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./variables.nix
		./systemPackages.nix
		./sessionVariables.nix
	];
}
