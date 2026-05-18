{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		kernelPackages = pkgs-unstable.linuxPackages_xanmod_latest;
	};
}
