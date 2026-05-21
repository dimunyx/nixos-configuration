{ config, lib, pkgs, pkgs-unstable, ... }:
{
	networking = {
		networkmanager = {
			enable = true;
			package = pkgs-unstable.networkmanager;
		};
	};
}
