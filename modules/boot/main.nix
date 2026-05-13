{ config, lib, grub2-themes, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./efi.nix
		./grub.nix
		./kernel.nix
		./plymouth.nix
		./grub2-theme.nix
		./consoleLogLevel.nix
	];
}
