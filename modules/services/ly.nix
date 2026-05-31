{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		ly = {
			enable = true;
			package = pkgs-unstable.ly;
		};
	};
}
