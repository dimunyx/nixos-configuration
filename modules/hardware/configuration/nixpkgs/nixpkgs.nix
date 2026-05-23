{ config, lib, pkgs, pkgs-unstable, nix-cachyos-kernel, ... }:
{
	nixpkgs = {
		hostPlatform = lib.mkDefault "x86_64-linux";
		overlays = [
			nix-cachyos-kernel.overlays.pinned
		];
	};
}
