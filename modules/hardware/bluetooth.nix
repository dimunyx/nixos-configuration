{ config, lib, pkgs, pkgs-unstable, ... }:
{
	hardware = {
		bluetooth = {
			enable = true;
			package = pkgs-unstable.bluez;
			powerOnBoot = true;
		};
	};
}
