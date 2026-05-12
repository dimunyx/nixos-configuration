{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		libinput = {
			enable = true;
		};
	};
}
