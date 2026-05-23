{ config, lib, pkgs, pkgs-unstable, ... }:
{
	hardware = {
		firmware = with pkgs.linuxFirmware; [
			rtl_bt
		];
	};
}
