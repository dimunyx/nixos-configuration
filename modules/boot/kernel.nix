{ config, lib, pkgs, pkgs-unstable, nix-cachyos-kernel, ... }:
{
	boot = {
		kernel = {
			sysctl = {
				"net.ipv4.ip_forward" = 1;
			};
		};
		kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest;
	};
}
