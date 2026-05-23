{ config, lib, pkgs, pkgs-unstable, nix-cachyos-kernel, ... }:
{
	imports = [
		./graphics.nix
		./firmware.nix
		./bluetooth.nix
		./configuration/main.nix
	];
}
