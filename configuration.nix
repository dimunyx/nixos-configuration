{ config, lib, grub2-themes, pkgs, pkgs-unstable, ... }:

{
	imports = [
		./modules/main.nix
		./hardware-configuration.nix
    	];
}
