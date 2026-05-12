{ config, lib, pkgs, pkgs-unstable, modulesPath, ... }:

{
  	imports = [
		(modulesPath + "/installer/scan/not-detected.nix")
		./modules/hardware/configuration/main.nix
    	];
}
