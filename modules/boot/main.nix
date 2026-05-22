{ config, lib, grub2-themes, pkgs, pkgs-unstable, nix-cachyos-kernel, ... }:
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
