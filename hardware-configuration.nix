{ config, lib, pkgs, pkgs-unstable, modulesPath, nix-cachyos-kernel, ... }:
{
  	imports = [
		(modulesPath + "/installer/scan/not-detected.nix")
		./modules/hardware/configuration/main.nix
    	];
}
