{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		kernelPackages = pkgs.linuxPackages_xanmod_latest;
	};
}
