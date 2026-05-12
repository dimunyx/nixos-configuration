{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		flatpak = {
			enable = true;
			package = pkgs-unstable.flatpak;
		};
	};
}
