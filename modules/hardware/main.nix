{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./configuration/main.nix
		./bluetooth.nix
	];
}
