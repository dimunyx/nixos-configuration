{ config, lib, pkgs, pkgs-unstable, ... }:
{
	programs = {
		hyprlock = {
			package = pkgs-unstable.hyprlock;
		};
	};
}
