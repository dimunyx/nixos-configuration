{ config, lib, pkgs, pkgs-unstable, ... }:
{
	hardware = {
		cpu = {
			amd = {
				updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
			};
		};
	};
}
