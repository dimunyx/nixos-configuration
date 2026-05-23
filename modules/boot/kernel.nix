{ config, lib, pkgs, pkgs-unstable, nix-cachyos-kernel, ... }:
{
	boot = {
		kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest;
	};
}
