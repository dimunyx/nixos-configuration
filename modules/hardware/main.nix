{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./graphics.nix
		./firmware.nix
		./bluetooth.nix
		./configuration/main.nix
	];
}
