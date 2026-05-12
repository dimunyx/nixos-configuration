{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		blueman = {
			enable = true;
		};
	};
}
