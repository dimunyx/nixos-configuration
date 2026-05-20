{ config, lib, pkgs, pkgs-unstable, ... }:
{
	virtualisation = {
		waydroid = {
			enable = true;
			package = pkgs-unstable.waydroid;
		};
	};
}
