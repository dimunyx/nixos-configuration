{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./initrd.nix
		./kernelParams.nix
		./kernelModules.nix
		./extraModulePackages.nix
	];
}
