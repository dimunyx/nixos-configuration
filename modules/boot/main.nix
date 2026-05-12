{ config, lib, grub2-themes, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./grub2-theme.nix
		./kernel.nix
		./grub.nix
		./efi.nix
	];
}
