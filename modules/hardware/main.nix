{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./graphics.nix
		./bluetooth.nix
		./configuration/main.nix
	];
}
