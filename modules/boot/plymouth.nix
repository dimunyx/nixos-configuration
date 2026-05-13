{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		plymouth = {
			enable = true;
			logo = ./icons/NixOS.png;
		};
	};
}
