{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		kernel = {
			sysctl = {
				"net.ipv4.ip_forward" = 1;
			};
		};
		kernelPackages = pkgs.linuxPackages_xanmod_latest;
	};
}
