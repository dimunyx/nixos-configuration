{ config, lib, pkgs, pkgs-unstable, nix-cachyos-kernel, ... }:
{
	boot = {
		kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-bore-lto-x86_64-v3;
	};
}
