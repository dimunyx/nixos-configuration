{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		displayManager = {
			ly = {
				enable = true;
				package = pkgs-unstable.ly;
			};
		};
	};
}
