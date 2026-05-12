{ config, lib, pkgs, pkgs-unstable, ... }:
{
	programs = {
		hyprlock = {
			enable = true;
			package = pkgs-unstable.hyprlock;
		};
	};
}
