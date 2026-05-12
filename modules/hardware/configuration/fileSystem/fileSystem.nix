{ config, lib, pkgs, pkgs-unstable, ... }:
{
	fileSystems = {
		"/boot" = {
			device = "/dev/disk/by-uuid/1A59-295B";
			fsType = "vfat";
			options = [
				"fmask=0022"
				"dmask=0022"
			];
		};
		"/" = {
			device = "/dev/disk/by-uuid/e66f1569-3df0-409f-9cfc-c7808892512c";
			fsType = "ext4";
		};
	};

	swapDevices = [
		{
			device = "/dev/disk/by-uuid/5a139977-5c13-41ab-879a-014e31b5622f";
		}
	];
}
