{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		gvfs = {
			enable = true;
			package = pkgs-unstable.gnome.gvfs;
		};
	};
}
