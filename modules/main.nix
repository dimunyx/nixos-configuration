{ config, lib, grub2-themes, pkgs, pkgs-unstable, inputs, nix-cachyos-kernel, ... }:
{
	imports = [
		./nix/main.nix
		./boot/main.nix
		./i18n/main.nix
		./time/main.nix
		./users/main.nix
		./system/main.nix
		./services/main.nix
		./programs/main.nix
		./hardware/main.nix
		./networking/main.nix
		./environment/main.nix
	];
}
