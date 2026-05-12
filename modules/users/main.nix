{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./root.nix
		./botnaru.nix
	];
}
