{ config, lib, pkgs, pkgs-unstable,  ... }:
{
	boot = {
		kernelPackages = pkgs.linuxPackages_zen;
	};
}
