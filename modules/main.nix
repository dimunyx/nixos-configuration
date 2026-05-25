{ config, lib, grub2-themes, pkgs, pkgs-unstable, inputs, nix-cachyos-kernel, silentSDDM, ... }:
{
	imports = [
		./nix/main.nix
		./boot/main.nix
		./i18n/main.nix
		./time/main.nix
		./users/main.nix
		./system/main.nix
		./security/main.nix
		./services/main.nix
		./programs/main.nix
		./hardware/main.nix
		./networking/main.nix
		./environment/main.nix
	];
}
