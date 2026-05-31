{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./root/root.nix
		./dimunyx/dimunyx.nix
	];
}
