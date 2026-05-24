{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		power-profiles-daemon = {
			enable = true;
			package = pkgs-unstable.power-profiles-daemon;
		};
	};
}
