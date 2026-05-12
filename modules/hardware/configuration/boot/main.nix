{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./initrd.nix
		./kernelModules.nix
		./extraModulePackages.nix
	];
}
