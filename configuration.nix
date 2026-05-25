{ config, lib, grub2-themes, pkgs, pkgs-unstable, inputs, nix-cachyos-kernel, silentSDDM, ... }:

{
	imports = [
		./modules/main.nix
		./hardware-configuration.nix
    	];
}
