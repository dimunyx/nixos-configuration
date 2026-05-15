{ config, lib, grub2-themes, pkgs, pkgs-unstable, inputs, ... }:

{
	imports = [
		./modules/main.nix
		./hardware-configuration.nix
		./modules/home-manager/home.nix
		inputs.home-manager.nixosModules.default
    	];
}
