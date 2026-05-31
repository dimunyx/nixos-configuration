{ config, lib, grub2-themes, pkgs, pkgs-unstable, inputs, nix-cachyos-kernel, ... }:

{
	imports = [
		./modules/main.nix
		./hardware-configuration.nix
    	];
}
