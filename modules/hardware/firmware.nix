{ config, lib, pkgs, pkgs-unstable, ... }:
{
	hardware = {
		firmware = with pkgs-unstable; [
			linux-firmware
		];
	};
}
